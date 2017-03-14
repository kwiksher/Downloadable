local zip = require( "plugin.zip" )
--
local function zipListener( event )
    if ( event.isError ) then
        print( "Unzip error" )
    else
        print( "event.name:" .. event.name )
        print( "event.type:" .. event.type )
        if ( event.response and type(event.response) == "table" ) then
            for i = 1, #event.response do
                print( event.response[i] )
            end
        end
    end
end
--
local function networkListener( event )
    if ( event.isError ) then
        print( "Network error - download failed" )
    elseif ( event.phase == "began" ) then
        print( "Progress Phase: began" )
    elseif ( event.phase == "ended" ) then
        if ( math.floor(event.status/100) > 3 ) then
            print( "Network error - download failed", event.status )
            --NOTE: 404 errors (file not found) is actually a successful return,
            --though you did not get a file, so trap for that
        else
            local options = {
                zipFile = event.response.filename,
                zipBaseDir = event.response.baseDirectory,
                dstBaseDir = system.DocumentsDirectory,
                listener = zipListener,
            }
        zip.uncompress( options )
        end
    end
end
-- 
local params    = {}
params.progress = true
local URL       = "http://omnigeekmedia.com/coronasdk/test.zip"
network.download( URL, "GET", networkListener, params, "test.zip", system.TemporaryDirectory )