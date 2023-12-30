--[[
generateTextElement(data, maxZ): Generates a text element with various properties such as position, padding, color overwrite, letter spacing, line height, text justify, font, z-index, and opacity.

generateImageElement(data, maxZ): Likely generates an image element with various properties. The full implementation is not shown in the provided excerpt.

generateRSSSignTemplateData(): It generates template data for an RSS sign.

generateRSSSignForImport(): It generates an RSS sign for import into another system or module.

The data parameter for generateTextElement and generateImageElement is expected to be a table with fields corresponding to the properties of the text or image element. The maxZ parameter is used to calculate the z-index of the element.
]]--


-- Generate the sign import


local function generateTextElement( data, maxZ )
    local sPosition = ''
    if data.mPosition ~= nil and ( data.mPosition.X ~= 0.0 or data.mPosition.Y ~= 0.0 ) then
        sPosition = string.format(
            ",mPosition=(X=%1.6f,Y=%1.6f)",
            data.mPosition.X, data.mPosition.Y )
    end
    local mTextSize = data.mTextSize or 30
    local sPadding = ''
    if data.mPadding ~= nil then
        sPadding = string.format(
            ",mPadding=(X=%1.6f,Y=%1.6f,Z=%1.6f,W=%1.6f)",
            data.mPadding.X, data.mPadding.Y, data.mPadding.Z, data.mPadding.W )
    end
    local sColourOverwrite = ''
    if data.mColourOverwrite ~= nil then
        sColourOverwrite = string.format(
            ",mColourOverwrite=(R=%1.6f,G=%1.6f,B=%1.6f,A=%1.6f)",
            data.mColourOverwrite.R, data.mColourOverwrite.G, data.mColourOverwrite.B, data.mColourOverwrite.A )
    end
    local sLetterSpacing = ''
    if data.mLetterSpacing ~= nil then
        sLetterSpacing = string.format(
            ",mLetterSpacing=%d",
            data.mLetterSpacing )
    end
    local sLineHeight = ''
    if data.mLineHeight ~= nil then
        sLineHeight = string.format(
            ",mLineHeight=%d",
            data.mLineHeight )
    end
    local sTextJustify = ''
    if data.mTextJustify ~= nil and data.mTextJustify ~= 'RSS_Right' then
        sTextJustify = ",mTextJustify=" .. data.mTextJustify
    end
    local mFont = data.mFont or "/KUI/Fonts/OpenSans/KUI_OpenSans.KUI_OpenSans"
    -- Must force zOrder by element index for import onto the sign, they can be corrected by code after
    local sZIndex = string.format(
        ",mZIndex=%d",
        ( maxZ - data.eIndex ) )
    --[[
    local sZIndex = ''
    if data.mZIndex ~= nil and data.mZIndex ~= 0 then
        sZIndex = string.format(
            ",mZIndex=%d",
            data.mZIndex )
    end
    ]]
    local mOpacity = data.mOpacity or 1.000000
    local eTextPattern = '(mTextData=(mText=INVTEXT("%s"),mBackgroundColour=(R=0.067708,G=0.067708,B=0.067708,A=1.000000),mTextSize=%d%s%s%s%s,mFont=Font\'"%s"\'),mImageData=(mImageSize=(X=1.000000,Y=0.000000)),mEffectData=(mScaleAndSpeed=(R=0.100000,G=0.100000,B=10.240000,A=5.120000)),mSharedData=(mElementName=INVTEXT("%s")%s%s%s,mOpacity=%1.6f,mTexture=Texture2D\'"/Game/FactoryGame/Resource/Parts/IronIngot/UI/IconDesc_IronIngot_256.IconDesc_IronIngot_256"\'))'
    return string.format(
        eTextPattern,
        data.mText,
        mTextSize,
        sTextJustify, sLetterSpacing, sLineHeight, sPadding,
        mFont,
        data.mElementName,
        sPosition, sColourOverwrite, sZIndex,
        mOpacity
    )
end

local function generateImageElement( data, maxZ )
    local sPosition = ''
    if data.mPosition ~= nil and ( data.mPosition.X ~= 0.0 or data.mPosition.Y ~= 0.0 ) then
        sPosition = string.format(
            ",mPosition=(X=%1.6f,Y=%1.6f)",
            data.mPosition.X, data.mPosition.Y )
    end
    local mImageSize = data.mImageSize or { X = 1.000000, Y = 0.000000 }
    local sOverwriteImageSize = ''
    if data.mOverwriteImageSize ~= nil then
        sOverwriteImageSize = string.format(
            ",mOverwriteImageSize=(X=%1.6f,Y=%1.6f)",
            data.mOverwriteImageSize.X, data.mOverwriteImageSize.Y )
    end
    local sUse9SliceMode = ''
    if data.mUse9SliceMode ~= nil then
        sUse9SliceMode = string.format(
            ",mUse9SliceMode=(X=%1.6f,Y=%1.6f)",
            data.mUse9SliceMode.X, data.mUse9SliceMode.Y )
    end
    local sColourOverwrite = ''
    if data.mColourOverwrite ~= nil then
        sColourOverwrite = string.format(
            ",mColourOverwrite=(R=%1.6f,G=%1.6f,B=%1.6f,A=%1.6f)",
            data.mColourOverwrite.R, data.mColourOverwrite.G, data.mColourOverwrite.B, data.mColourOverwrite.A )
    end
    -- Must force zOrder by element index for import onto the sign, they can be corrected by code after
    local sZIndex = string.format(
        ",mZIndex=%d",
        ( maxZ - data.eIndex ) )
    --[[
    local sZIndex = ''
    if data.mZIndex ~= nil and data.mZIndex ~= 0 then
        sZIndex = string.format(
            ",mZIndex=%d",
            data.mZIndex )
    end
    ]]
    local sRotation = ''
    if data.mRotation ~= nil then
        sRotation = string.format(
            ',mRotation=%1.6f',
            data.mRotation )
    end
    local sUrl = ''
    if data.mUrl ~= nil then
        sUrl = string.format(
            ',mUrl="%s"',
            data.mUrl )
    end
    local sIsUsingCustomTexture = ''
    if data.mIsUsingCustom ~= nil then
        sIsUsingCustomTexture = string.format(
            ",mIsUsingCustom=%s",
            data.mIsUsingCustom )
    end
    local eTextPattern = '(mElementType=Image,mTextData=(mText=LOCTABLE("/KUI/StringTables/KUI_WidgetWords.KUI_WidgetWords", "RSS_DefaultTextElementText"),mBackgroundColour=(R=0.067708,G=0.067708,B=0.067708,A=1.000000),mTextSize=0,mTextJustify=RSS_Middle,mFont=Font\'"/KUI/Fonts/OpenSans/KUI_OpenSans.KUI_OpenSans"\'),mImageData=(mImageSize=(X=%1.6f,Y=%1.6f)%s%s),mEffectData=(mScaleAndSpeed=(R=0.100000,G=0.100000,B=10.240000,A=5.120000)),mSharedData=(mElementName=INVTEXT("%s")%s%s%s,mOpacity=1.000000%s,mTexture=Texture2D\'"%s"\'%s%s))'
    return string.format( eTextPattern,
        mImageSize.X, mImageSize.Y,
        sOverwriteImageSize, sUse9SliceMode,
        data.mElementName,
        sPosition, sColourOverwrite, sZIndex, sRotation,
        data.mTexture,
        sUrl, sIsUsingCustomTexture
    )
end

local function generateRSSSignForImport( data )
    
    local signPattern = "(mSignType=%s,mSignTypeSize=%s,mHologramData=(mEnable=False),mFlatData=(mEnable=True,mOverwriteParalaxHorizontalRatio=2.000000),mRoundedData=(mEnable=False),mElements=(%s),mTemplateData=(mEnable=True))"
    
    
    local lastElement = -1
    local firstElement = 1000000
    local errors = ''
    for _, element in pairs( data.elements ) do
        if element.eIndex < firstElement then firstElement = element.eIndex end
        if element.eIndex > lastElement then lastElement = element.eIndex end
        if element.mElementType == "Text" then
        elseif element.mElementType == "Image" then
        else
            errors = errors .. "\n\tInvalid element type! " .. tostring( element.eIndex ) .. " - '" .. element.mElementType .. "'"
        end
    end
    
    
    if firstElement ~= 0 then
        errors = errors .. "\n\tMissing element 0!  What are you doing man?"
    end
    if lastElement < firstElement then
        errors = errors .. "\n\tMissing last element!  C'mon man!"
    end
    
    local elements = {}
    for _, element in pairs( data.elements ) do
        --print( element.eIndex, element.mElementName )
        if element.mElementType == "Text" then
            elements[ element.eIndex ] = generateTextElement( element, lastElement )
        elseif element.mElementType == "Image" then
            elements[ element.eIndex ] = generateImageElement( element, lastElement )
        end
    end
  
    local e = ''
    for i = firstElement, lastElement do
        local t = elements[ i ]
        if t == nil then
            errors = errors .. "\n\tMissing element " .. tostring( i ) .. " of " .. tostring( lastElement )
        else
            if e ~= '' then
                e = e .. ','
            end
            e = e .. t
            --print( i, t )
        end
    end
    if errors ~= '' then
        computer.panic( errors )
    end

    local import = string.format(
        signPattern,
        data.mSignType,
        data.mSignTypeSize,
        e
    )

    if ____Disk_UUID ~= nil and ____Disk_UUID ~= '' then
        print( 'Saving RSS Sign Import String to "%LocalAppData%\\FactoryGame\\Saved\\SaveGames\\computers\\' .. ____Disk_UUID .. '\\rssimport.txt"' )
        local f = fs.open( "/rssimport.txt", "w" )
        if f ~= nil then
            f:write( import )
            f:close()
        end
    end
    
end

local function generateRSSSignTemplateData()
    local data = {
        mSignType = "RSS_Normal",
        mSignTypeSize = "RSS_2x1",
        xRes = 1024,
        yRes = 512,
        elements = {
            -- Status
            {   -- Text
                eIndex = RSS_EID_STATUS_TEXT,
                mElementType = "Text",
                mElementName = "txtStatus",
                mText = "Status of this node",
                mPosition= { X = 0.000000, Y = 200.000000 },
                mTextSize = 15,
                mTextJustify = "RSS_Middle",
                mZIndex = RSS_STATUS_ZINDEX_STATUS_FRONT,
            },
            {   -- Border
                eIndex = RSS_EID_STATUS_TEXT + 1,
                mElementType = "Image",
                mElementName = "bdrStatus",
                mTexture = "/RSS/Assets/Images/UI/Shapes/7x1/build_7x1_holo.build_7x1_holo",
                mOverwriteImageSize = { X = 768.000000, Y = 96.000000 },
                mPosition= { X = 0.000000, Y = 200.000000 },
                mUse9SliceMode = { X = 1.000000, Y = 0.010000 },
                mColourOverwrite = { R = 0.862745, G = 0.862745, B = 0.862745, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_STATUS_FRONT - 1,
            },
            {   -- Background
                eIndex = RSS_EID_STATUS_TEXT + 2,
                mElementType = "Image",
                mElementName = "bgdStatus",
                mTexture = "/KUI/Assets/9Slice/9S1111.9S1111",
                mOverwriteImageSize = { X = 768.000000, Y = 96.000000 },
                mPosition= { X = 0.000000, Y = 200.000000 },
                mUse9SliceMode = { X = 1.000000, Y = 0.250000 },
                mColourOverwrite = { R = 0.109804, G = 0.427451, B = 0.564706, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_STATUS_FRONT - 2,
            },
            
            -- Current Location
            {   -- Text
                eIndex = RSS_EID_LOC_START,
                mElementType = "Text",
                mElementName = "txtLocCurr",
                mText = "Current Location",
                mPosition= { X = 320.000000, Y = -200.000000 },
                mTextSize = 15,
                mTextJustify = "RSS_Middle",
                mZIndex = RSS_STATUS_ZINDEX_LOCATION,
            },
            {   -- Border
                eIndex = RSS_EID_LOC_START + 1,
                mElementType = "Image",
                mElementName = "bdrLocCurr",
                mTexture = "/RSS/Assets/Images/UI/Shapes/7x1/build_7x1_holo.build_7x1_holo",
                mOverwriteImageSize = { X = 360.000000, Y = 96.000000 },
                mColourOverwrite = { R = 0.862745, G = 0.862745, B = 0.862745, A = 1.000000 },
                mPosition= { X = 320.000000, Y = -200.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LOCATION - 1,
            },
            {   -- Background
                eIndex = RSS_EID_LOC_START + 2,
                mElementType = "Image",
                mElementName = "bgdLocCurr",
                mTexture = "/KUI/Assets/9Slice/9S1111.9S1111",
                mColourOverwrite = { R = 0.000000, G = 0.025136, B = 0.494350, A = 1.000000 },
                mOverwriteImageSize = { X = 360.000000, Y = 96.000000 },
                mPosition= { X = 320.000000, Y = -200.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LOCATION - 2,
            },
            
            -- Destination Location
            {   -- Text
                eIndex = RSS_EID_LOC_DEST,
                mElementType = "Text",
                mElementName = "txtLocDest",
                mText = "Destination Location",
                mPosition= { X = 320.000000, Y = -20.000000 },
                mTextSize = 15,
                mTextJustify = "RSS_Middle",
                mZIndex = RSS_STATUS_ZINDEX_LOCATION,
            },
            {   -- Border
                eIndex = RSS_EID_LOC_DEST + 1,
                mElementType = "Image",
                mElementName = "bdrLocDest",
                mTexture = "/RSS/Assets/Images/UI/Shapes/7x1/build_7x1_holo.build_7x1_holo",
                mOverwriteImageSize = { X = 360.000000, Y = 96.000000 },
                mColourOverwrite = { R = 0.862745, G = 0.862745, B = 0.862745, A = 1.000000 },
                mPosition= { X = 320.000000, Y = -20.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LOCATION - 1,
            },
            {   -- Background
                eIndex = RSS_EID_LOC_DEST + 2,
                mElementType = "Image",
                mElementName = "bgdLocDest",
                mTexture = "/KUI/Assets/9Slice/9S1111.9S1111",
                mColourOverwrite = { R = 0.035294, G = 0.078431, B = 0.015686, A = 1.000000 },
                mOverwriteImageSize = { X = 360.000000, Y = 96.000000 },
                mPosition= { X = 320.000000, Y = -20.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LOCATION - 2,
            },
            
            -- Location Preposition
            {   -- Text
                eIndex = RSS_EID_LOC_TO,
                mElementType = "Text",
                mElementName = "txtCurrToDest",
                mText = "To",
                mPosition= { X = 320.000000, Y = -100.000000 },
                mTextSize = 25,
                mTextJustify = "RSS_Middle",
                mZIndex = RSS_STATUS_ZINDEX_LOCATION,
            },
            
            -- List/Map Area
            {   -- Border
                eIndex = RSS_EID_LIST_BACKGROUND,
                mElementType = "Image",
                mElementName = "bdrListMapArea",
                mTexture = "/RSS/Assets/Images/UI/Shapes/1x2/1x2_outline1.1x2_outline1",
                mOverwriteImageSize = { X = 640.000000, Y = 512.000000 },
                mUse9SliceMode = { X = 1.000000, Y = 0.067500 },
                mColourOverwrite = { R = 0.783538, G = 0.296138, B = 0.059511, A = 1.000000 },
                mPosition= { X = -192.000000, Y = 0.000000 },
                mZIndex = RSS_EID_FILLER,
            },
            
            -- List Area
            {   -- List Up Icon
                eIndex = RSS_EID_LIST_INDICATOR_UP,
                mElementType = "Image",
                mElementName = "icnListMoreUp",
                mTexture = "/RSS/Assets/Images/1x1/1x1_arrow_up.1x1_arrow_up",
                mOverwriteImageSize = { X = 48.000000, Y = 48.000000 },
                mColourOverwrite = { R = 0.095307, G = 0.095307, B = 0.095307, A = 1.000000 },
                mPosition= { X = 74.000000, Y = -202.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LIST_FRONT,
            },
            {   -- List Down Icon
                eIndex = RSS_EID_LIST_INDICATOR_DN,
                mElementType = "Image",
                mElementName = "icnListMoreDn",
                mTexture = "/RSS/Assets/Images/1x1/1x1_arrow_down.1x1_arrow_down",
                mOverwriteImageSize = { X = 48.000000, Y = 48.000000 },
                mColourOverwrite = { R = 0.095307, G = 0.095307, B = 0.095307, A = 1.000000 },
                mPosition= { X = 74.000000, Y = 175.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LIST_FRONT,
            },
            
            -- UIO - List/Map display toggle
            {   -- Icon
                eIndex = RSS_EID_MAP_TOGGLE_ICON,
                mElementType = "Image",
                mElementName = "icnMapToggle",
                mTexture = "/Game/FactoryGame/Buildable/Factory/DroneStation/UI/TXUI_Drone_Input.TXUI_Drone_Input",
                mOverwriteImageSize = { X = 24.000000, Y = 24.000000 },
                mPosition= { X = 496.000000, Y = 59.000000 },
                mColourOverwrite = { R = 0.109804, G = 0.427451, B = 0.564706, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO,
            },
            {   -- Label
                eIndex = RSS_EID_MAP_TOGGLE_LABEL,
                mElementType = "Text",
                mElementName = "txtMapToggle",
                mText = "Display Map",
                mTextSize = 12,
                mPosition= { X = 488.000000, Y = 59.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO + 1,
            },
            
            -- UIO - Select Up
            {   -- Icon
                eIndex = RSS_EID_LIST_SELECT_UP,
                mElementType = "Image",
                mElementName = "icnSelectUp",
                mTexture = "/Game/FactoryGame/Buildable/Factory/DroneStation/UI/TXUI_Drone_Input.TXUI_Drone_Input",
                mOverwriteImageSize = { X = 24.000000, Y = 24.000000 },
                mPosition= { X = 496.000000, Y = 83.000000 },
                mColourOverwrite = { R = 0.783538, G = 0.296138, B = 0.059511, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO,
            },
            {   -- Label
                eIndex = RSS_EID_LIST_SELECT_UP + 1,
                mElementType = "Text",
                mElementName = "txtSelectUp",
                mText = "Scroll Up",
                mTextSize = 12,
                mPosition= { X = 488.000000, Y = 83.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO + 1,
            },
            
            -- UIO - Select Down
            {   -- Icon
                eIndex = RSS_EID_LIST_SELECT_DN,
                mElementType = "Image",
                mElementName = "icnSelectDn",
                mTexture = "/Game/FactoryGame/Buildable/Factory/DroneStation/UI/TXUI_Drone_Input.TXUI_Drone_Input",
                mOverwriteImageSize = { X = 24.000000, Y = 24.000000 },
                mPosition= { X = 496.000000, Y = 107.000000 },
                mColourOverwrite = { R = 0.783538, G = 0.296138, B = 0.059511, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO,
            },
            {   -- Label
                eIndex = RSS_EID_LIST_SELECT_DN + 1,
                mElementType = "Text",
                mElementName = "txtSelectUp",
                mText = "Scroll Down",
                mTextSize = 12,
                mPosition= { X = 488.000000, Y = 107.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO + 1,
            },
            
            -- UIO - Compute Route / Quick Return
            {   -- Icon
                eIndex = RSS_EID_ROUTE_COMPUTE_ICON,
                mElementType = "Image",
                mElementName = "icnComputeRoute",
                mTexture = "/Game/FactoryGame/Buildable/Factory/DroneStation/UI/TXUI_Drone_Input.TXUI_Drone_Input",
                mOverwriteImageSize = { X = 24.000000, Y = 24.000000 },
                mPosition= { X = 496.000000, Y = 131.000000 },
                mColourOverwrite = { R = 0.102242, G = 0.473531, B = 0.012983, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO,
            },
            {   -- Label
                eIndex = RSS_EID_ROUTE_COMPUTE_LABEL,
                mElementType = "Text",
                mElementName = "txtComputeRoute",
                mText = "Compute Route",
                mTextSize = 12,
                mPosition= { X = 488.000000, Y = 131.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO + 1,
            },
            
            -- UIO - Compute Route / Quick Return
            {   -- Icon
                eIndex = RSS_EID_ROUTE_RESET_ICON,
                mElementType = "Image",
                mElementName = "icnResetRouting",
                mTexture = "/Game/FactoryGame/Buildable/Factory/DroneStation/UI/TXUI_Drone_Input.TXUI_Drone_Input",
                mOverwriteImageSize = { X = 24.000000, Y = 24.000000 },
                mPosition= { X = 496.000000, Y = 155.000000 },
                mColourOverwrite = { R = 0.496933, G = 0.021219, B = 0.021219, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO,
            },
            {   -- Label
                eIndex = RSS_EID_ROUTE_RESET_LABEL,
                mElementType = "Text",
                mElementName = "txtResetRouting",
                mText = "Reset Routing",
                mTextSize = 12,
                mPosition= { X = 488.000000, Y = 155.000000 },
                mZIndex = RSS_STATUS_ZINDEX_UIO + 1,
            },
            
            -- Some filler
            {   -- Doggo
                eIndex = RSS_EID_FILLER,
                mElementType = "Image",
                mElementName = "icnDoggo",
                mTexture = "/RSS/Assets/Images/1x2/1x2_difd.1x2_difd",
                mOverwriteImageSize = { X = 96.000000, Y = 192.000000 },
                mPosition= { X = 234.000000, Y = 148.000000 },
                mZIndex = RSS_STATUS_ZINDEX_FILLER,
            },
            {   -- Me
                eIndex = RSS_EID_FILLER + 1,
                mElementType = "Image",
                mElementName = "icnLogoMe",
                mTexture = "/RSS/Assets/Images/Milestones/rss_milestone.rss_milestone",
                mUrl = "http://localhost/remotefs/HypertubeNetwork/images/ANS-E-Profile.png",
                mIsUsingCustom = "True",
                mOverwriteImageSize = { X = 48.000000, Y = 48.000000 },
                mPosition= { X = 352.000000, Y = 224.000000 },
                mZIndex = RSS_STATUS_ZINDEX_FILLER,
            },
            {   -- FIN
                eIndex = RSS_EID_FILLER + 2,
                mElementType = "Image",
                mElementName = "icnLogoFIN",
                mTexture = "/RSS/Assets/Images/Milestones/rss_milestone.rss_milestone",
                mUrl = "http://localhost/remotefs/HypertubeNetwork/images/ficsit-network-logo.png",
                mIsUsingCustom = "True",
                mOverwriteImageSize = { X = 48.000000, Y = 48.000000 },
                mPosition= { X = 416.000000, Y = 224.000000 },
                mZIndex = RSS_STATUS_ZINDEX_FILLER,
            },
            {   -- RSS2
                eIndex = RSS_EID_FILLER + 3,
                mElementType = "Image",
                mElementName = "icnLogoRSS2",
                mTexture = "/KUI/Assets/Logo/TXUI_Logo_RSS.TXUI_Logo_RSS",
                mOverwriteImageSize = { X = 48.000000, Y = 48.000000 },
                mPosition= { X = 480.000000, Y = 224.000000 },
                mZIndex = RSS_STATUS_ZINDEX_FILLER,
            },
            
            -- And the blackground
            {
                eIndex = RSS_EID_BLACKGROUND,
                mElementType = "Image",
                mElementName = "imgBlackground",
                mTexture = "/RSS/Assets/Images/UI/Shapes/Custom/shape_square.shape_square",
                mColourOverwrite = { R = 0.000000, G = 0.000000, B = 0.000000, A = 1.000000 },
                mImageSize= { X = 1.000000, Y = 1.000000 },
                mZIndex = 0,
            },
            
        }
    }
    
    -- Create the List Option Entries
    local oIndex = 0
    local yOpt = -205.000000
    for eIndex = RSS_EID_LIST_FIRST, RSS_EID_LIST_LAST do
        local mTextID = "txtListOpt" .. tostring( oIndex )
        table.insert( data.elements, {
            eIndex = eIndex,
            mElementType = "Text",
            mElementName = mTextID,
            mText = mTextID,
            mPadding = { X = 10.000000, Y = 5.000000, Z = 10.000000, W = 5.000000 },
            mPosition= { X = -192.000000, Y = yOpt },
            mTextSize = 15,
            mTextJustify = "RSS_Middle",
            mZIndex = RSS_STATUS_ZINDEX_LIST_FRONT,
        })
        oIndex = oIndex + 1
        yOpt = yOpt + 25.0
    end
    
    -- Make sure the entire map is loaded
    if HypertubeNode.hyper_network == nil then return data end
    
    local nodes = HypertubeNode.nodes
    for _, node in pairs( nodes ) do
        if node.location == nil then
            print( "Nodes are incomplete, cannot generate map elements.  Returning base sign template." )
            return data
        end
        for _, remote in pairs( node.connections ) do
            if nodes[ remote ] == nil or nodes[ remote ].location == nil then
                print( "Nodes are incomplete, cannot generate map elements.  Returning base sign template." )
                return data
            end
        end
    end
    
    -- Finally, at the very end, create the map
    local mapWindow = { -478, -222, 96, 196 }
    local mapX = mapWindow[ 3 ] - mapWindow[ 1 ]
    local mapY = mapWindow[ 4 ] - mapWindow[ 2 ]
    local minNodeX =  1000000.0
    local minNodeY =  1000000.0
    local maxNodeX = -1000000.0
    local maxNodeY = -1000000.0
    
    -- Get the physical size limits of the network so we can place everything in the window
    for _, node in pairs( nodes ) do
        local loc = node.location
        if loc.x < minNodeX then minNodeX = loc.x end
        if loc.x > maxNodeX then maxNodeX = loc.x end
        if loc.y < minNodeY then minNodeY = loc.y end
        if loc.y > maxNodeY then maxNodeY = loc.y end
    end
    
    local scaleX = mapX / ( maxNodeX - minNodeX )
    local scaleY = mapY / ( maxNodeY - minNodeY )
    local scale = scaleX
    if scaleY < scaleX then scale = scaleX end
    
    local eID = RSS_EID_BLACKGROUND + 1
    local map = {}
    
    -- Now we have the scale factor, create an element for each node
    for i = 1, HypertubeNode.hyper_network.size do
        local node = nodes[ i ]
        --print( i, node )
        
        if node ~= nil then
            local s = ''
            local zOff = 0
            if node.mode == HypertubeNode.MODE_DESTINATION then
                s = "/RSS/Assets/Images/UI/Shapes/Custom/shape_circle.shape_circle"
            elseif node.mode == HypertubeNode.MODE_JUNCTION then
                zOff = -1
                s = "/RSS/Assets/Images/UI/Shapes/Custom/shape_diamond.shape_diamond"
            else
                computer.panic( "generateRSSSignTemplateData() - Node is invalid\n\tuuid  : " .. node.uuid .. "\n\tvertex: " .. tostring( node.vertex ) )
            end
            
            local pX = mapWindow[ 1 ] + ( node.location.x - minNodeX ) * scale
            local pY = mapWindow[ 2 ] + ( node.location.y - minNodeY ) * scale
            
            table.insert( data.elements, {
                eIndex = eID,
                mElementType = "Image",
                mElementName = "node:" .. tostring( node.vertex ),
                mTexture = s,
                mOverwriteImageSize = { X = 12.000000, Y = 12.000000 },
                mPosition = { X = pX, Y = pY },
                mColourOverwrite = { R = 0.132868, G = 0.132868, B = 0.132868, A = 1.000000 },
                mZIndex = RSS_STATUS_ZINDEX_LIST_BACK,
            })
            
            -- Map the vertex index to the map element index
            map[ node.vertex ] = { element = eID, zOffset = zOff }
            
            eID = eID + 1
        end
    end
    
    -- Finally, go through all the connections, adding each unique edge (edge 1->2 is the same as 2->1 for display purposes)
    for i = 1, HypertubeNode.hyper_network.size do
        local node = nodes[ i ]
        print( i, node )
        
        if node ~= nil then
            
            table.sort( node.connections, function( a, b ) return a < b end )
            
            local numconn = table.countKeyValuePairs( node.connections )
            
            for j = 1, numconn do
                local remote = node.connections[ j ]
                --print( "\t", j, remote )
                
                local edge = edgeMapID( node.vertex, remote )
                if map[ edge ] == nil then
                    
                    --print( node.vertex, remote, edge )
                    
                    local nl = node.location
                    local rl = nodes[ remote ].location
                    
                    local eP, eL, eA = computeEdge( { nl.x, nl.y }, { rl.x, rl.y } )
                    eP[ 1 ] = mapWindow[ 1 ] + ( eP[ 1 ] - minNodeX ) * scale
                    eP[ 2 ] = mapWindow[ 2 ] + ( eP[ 2 ] - minNodeY ) * scale
                    eL = eL * scale
                    
                    table.insert( data.elements, {
                        eIndex = eID,
                        mElementType = "Image",
                        mElementName = "edge:" .. edge ,
                        mTexture = "/RSS/Assets/Images/UI/Shapes/Custom/shape_square.shape_square",
                        mOverwriteImageSize = { X = 1.500000, Y = eL },
                        mPosition = { X = eP[ 1 ], Y = eP[ 2 ] },
                        mRotation = eA,
                        mColourOverwrite = { R = 0.132868, G = 0.132868, B = 0.132868, A = 1.000000 },
                        mZIndex = RSS_STATUS_ZINDEX_LIST_BACK,
                    })
                    
                    -- Map the edge to the map element index
                    map[ edge ] = { element = eID, zOffset = -2 }
                    
                    eID = eID + 1
                    
                end
            end
        end
    end
    
    HypertubeNode.map = map
    
    return data
end


--[[

    -- Get the RSS Sign[s] for Destinations
    local signs = component.getComponentsByClass( ClassSet.Displays.Signs.ReallySimpleSigns.All )
    if HypertubeNode.mode == HypertubeNode.MODE_DESTINATION then
        if signs == nil or #signs < 1 then
            computer.panic( "Destination Node is missing Really Simple Sign(s)!" )
        end
    else
        if signs ~= nil and #signs > 0 then
            computer.panic( "Junction Nodes should not have any Really Simple Sign(s)!" )
        end
    end
    HypertubeNode.signs = signs
    
    -- Load the element layout
    local elementData = generateRSSSignTemplateData()
    
    -- Enforce the layout of the main elements
    for _, element in pairs( elementData.elements ) do
        if element.mZIndex ~= nil then
            rssElementSetZIndex( signs, element.eIndex, element.mZIndex )
        end
    end
    
    -- Quickly hide all the garbage elements behind the blackground
    for _, sign in pairs( signs ) do
        for eid = RSS_EID_BLACKGROUND + 1, sign:GetNumOfElements() - 1 do
            sign:Element_SetZIndex( RSS_STATUS_ZINDEX_HIDDEN, eid )
        end
    end
    
    


]]