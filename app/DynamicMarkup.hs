{-# LANGUAGE OverloadedStrings #-}

module DynamicMarkup where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A
import Data.Time

foliage :: UTCTime -> Html
foliage tm = do
    docType
    --  saved from url=(0048)http://www.infinitejourneys.in/foliage-outdoors/ 
    html ! lang "en" ! xmlns "http://www.w3.org/1999/xhtml" ! class_ "overthrow-enabled js no-touch cssanimations csstransitions" $ do
        -- <![endif]
        H.head $ do
            meta ! httpEquiv "Content-Type" ! content "text/html; charset=UTF-8"
            H.title "Tours & Travels in Pune | Summer Camps in India | Offbeat Destinations India"
            meta ! name "keywords" ! content "Tours and Travels in Pune, Summer Camps in India, Wildlife Safari trips, offbeat Destinations in India"
            meta ! name "description" ! content "We are a government recognized Tours & Travels in Pune, India. We specialized in offering Offbeat Destinations in India, summer camps in India, offbeat tours."
            link ! rel "canonical" ! href "http://www.infinitejourneys.in/foliage-outdoors/"
            --  NEW 
            meta ! name "robots" ! content "index, follow"
            meta ! content "Tours & Travels in Pune | Summer Camps in India | Offbeat Destinations India"
            meta ! content "We are a government recognized Tours & Travels in Pune, India. We specialized in offering Offbeat Destinations in India, summer camps in India, offbeat tours."
            meta ! content ""
            meta ! content "http://www.infinitejourneys.in/foliage-outdoors/"
            meta ! content ""
            meta ! content ""
            meta ! name "author" ! content ""
            meta ! name "viewport" ! content "width=device-width, initial-scale=1, maximum-scale=1"
            meta ! name "apple-mobile-web-app-capable" ! content "yes"
            --  For Facebook Share on detail page 
            link ! href "./foliage_files/css" ! rel "stylesheet" ! type_ "text/css"
            --  <link rel="stylesheet" type="text/css" href="http://cdn.webrupee.com/font"/> 
            link ! href "./foliage_files/font-awesome.css" ! rel "stylesheet" ! type_ "text/css"
            link ! rel "stylesheet" ! href "./foliage_files/base.css"
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/skeleton.css"/>
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/fancyfields.css"/>
            -- <link type="text/css" rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/jquery.mmenu.css" />
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/jquery.bxslider.css"/>
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/nanoscroller.css">
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/main.css">
            link ! rel "stylesheet" ! href "./foliage_files/prettyPhoto.css" ! type_ "text/css" ! media "screen" ! charset "utf-8"
            --  <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/globalSite.css"/> 
            -- <link rel="stylesheet" href="http://www.infinitejourneys.in/templates/default/css/layoutSite.css"/> 
            link ! rel "stylesheet" ! href "./foliage_files/foliageGlobal.css"
            link ! rel "stylesheet" ! href "./foliage_files/foliagePayment.css"
            -- for calender
            link ! rel "stylesheet" ! media "all" ! type_ "text/css" ! href "./foliage_files/jquery-ui.css"
            link ! rel "stylesheet" ! media "all" ! type_ "text/css" ! href "./foliage_files/jquery-ui-timepicker-addon.css"
            -- [if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]
            script ! async "" ! src "./foliage_files/default" ! charset "UTF-8" $ mempty
            script ! async "" ! src "./foliage_files/analytics.js" $ mempty
            script ! src "./foliage_files/1565756943734145" ! async "" $ mempty
            script ! async "" ! src "./foliage_files/fbevents.js" $ mempty
            script ! A.id "facebook-jssdk" ! src "./foliage_files/sdk.js" $ mempty
            script ! async "" ! src "./foliage_files/fbds.js" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/jquery-1.10.2.min.js" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/sitePath.js" $ mempty
            -- commaon js files
            script ! type_ "text/javascript" ! src "./foliage_files/overthrow.min.js" ! defer "defer" $ mempty
            script ! src "./foliage_files/modernizr.custom.js" ! type_ "text/javascript" ! defer "defer" $ mempty
            -- responsive support
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.mmenu.js" ! defer "defer" $ mempty
            -- responsive-menu
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.mousewheel.js" ! defer "defer" $ mempty
            --  the mousewheel plugin 
            --  <script src="http://www.infinitejourneys.in/js/fancyfields-1.2.min.js" type="text/javascript" defer="defer"></script> 
            script ! src "./foliage_files/scrollIt.min.js" ! type_ "text/javascript" ! defer "defer" $ mempty
            script ! src "./foliage_files/jquery.lazyload.js" ! type_ "text/javascript" ! defer "defer" $ mempty
            --  lazyload images js 
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.bxslider.min.js" ! defer "defer" $ mempty
            --  bx slider js 
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.easing.min.js" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/jquery-ui.min.js" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/ajax-countryList.js" ! defer "defer" $ mempty
            --  ajax-country List 
            script ! type_ "text/javascript" ! src "./foliage_files/popupSocial.js" ! defer "defer" $ mempty
            --  ajax-country List 
            -- end commaon js files
            --  Facebook Conversion Code for Foliage Outdoors 
            script "(function() {\n    var _fbq = window._fbq || (window._fbq = []);\n    if (!_fbq.loaded) {\n    var fbds = document.createElement('script');\n    fbds.async = true;\n    fbds.src = '//connect.facebook.net/en_US/fbds.js';\n    var s = document.getElementsByTagName('script')[0];\n    s.parentNode.insertBefore(fbds, s);\n    _fbq.loaded = true;\n    }\n    })();\n    window._fbq = window._fbq || [];\n    window._fbq.push(['track', '6032443521819', {'value':'0.00','currency':'INR'}]);"
            noscript "<img height=\"1\" width=\"1\" alt=\"\" style=\"display:none\" src=\"https://www.facebook.com/tr?ev=6032443521819&amp;cd[value]=0.00&amp;cd[currency]=INR&amp;noscript=1\" />"
            link ! rel "canonical" ! href "http://www.infinitejourneys.in/foliage-outdoors/"
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.nanoscroller.js" ! defer "defer" $ mempty
            -- pop-up scroller
            script ! src "./foliage_files/jquery.prettyPhoto.js" ! type_ "text/javascript" ! charset "utf-8" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/globalTours.js" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/smallBannerBxSlider.js" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/vCarts.js" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/updatesSlide.js" ! defer "defer" $ mempty
            script ! type_ "text/javascript" ! src "./foliage_files/pop-up.js" ! defer "defer" $ mempty
            script ! src "./foliage_files/foliageHomeSearch.js" ! type_ "text/javascript" ! defer "defer" $ mempty
            script ! src "./foliage_files/show-more-less.js" ! type_ "text/javascript" ! defer "defer" $ mempty
            script ! type_ "text/javascript" $ "$(document).ready(function () {\n\n            /*FOR V-CARTS MOUSEOVER EFFECTS*/\n            $(\"li.boxImages\").hover(function () {\n                $(this).children(\".hoverDiv\").fadeToggle();\n            });\n\n            /*FOR RECENT BLOG*/\n            $('#recentBlogs').html('<h2>Loading recent articles...</h2>');\n            $.post('http://' + window.location.host + '/blog/foliage-post/', function (data) {\n                $('#recentBlogs').html(data);\n            });\n\n        });"
            H.style ".moreAboutCompanies {\n        font-size: 14px;\n        line-height: 21px;\n        margin: 0 0 14px;\n    }\n    .moreAboutSectionTours {\n        font-size: 14px;\n        line-height: 21px;\n        margin: 0 0 14px;\n    }\n    .morecontent span {\n        display: none;\n        font-size:14px;\n    }\n    .moreFOcontent span {\n        display: none;\n        font-size: 14px;\n    }\n    .moreFOtxt{\n        color: #5da510 !important;\n        font-size: 12px;\n        text-decoration: underline;\n    }\n    .botHoverDiv h6{\n        font-size:12px !important;  \n    }"
            script ! type_ "text/javascript" $ "$(document).ready(function(){\n\n$('#spinner').fadeOut(200); // will first fade out the loading animation\n        $('#preloaderFo').delay(500).fadeOut('slow'); // will fade out the white DIV that covers the website.\n        $('body').delay(500).css({'overflow':'visible'});\n\n$('nav#menu').mmenu();\n$('.infiniteThemesBox, .boxDaysNights').css('display','none');\n\n/*AUTO REFRESHING TOURS V-CARDS*/\nsetInterval(function(){\n$.post('http://www.infinitejourneys.in/includes/ajax-records.php',{action:'hideBatchDates'}, function(data) {\n//do nothing\n});\n},10000);\n   /*END*/\n\n      $(\"#year\").html((new Date).getFullYear())\n\n});"
            link ! rel "shortcut icon" ! href "http://www.infinitejourneys.in/templates/default/images/favicon.ico"
            link ! rel "apple-touch-icon" ! href "http://www.infinitejourneys.in/templates/default/images/apple-touch-icon.png"
            link ! rel "apple-touch-icon" ! sizes "72x72" ! href "http://www.infinitejourneys.in/templates/default/images/apple-touch-icon-72x72.png"
            link ! rel "apple-touch-icon" ! sizes "114x114" ! href "http://www.infinitejourneys.in/templates/default/images/apple-touch-icon-114x114.png"
            -- [if lt IE 7]>
            -- <style media="screen" type="text/css">
            -- #container {
            --     height:100%;
            -- }
            -- </style>
            -- <![endif]
            H.style ".advncSrchLdrImg{\nfloat: right;\nmargin-right: -14px;\nmargin-top: -32px;\ndisplay:none;\n}\n.foLoadMoreTours .load_more{\nbackground: none repeat scroll 0 0 #5c8609;\nborder: 1px solid #416102;\nborder-radius: 5px;\ncolor: #ffffff;\ndisplay: block;\nfloat: left;\nfont-size: 12px;\nheight: 35px;\nline-height: 35px;\npadding: 0;\ntext-align: center;\ntext-transform: uppercase;\nwidth: 120px;\nmargin-left:42%;\n}\n.foLoadMoreTours .load_more:hover {\ncolor: #89ac44;\n}\n.spanPerType{\n  margin-right:10px;\n  color:#918B8B;\n}"
            H.style ! type_ "text/css" $ ".fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:\"lucida grande\", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}\n.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_loader{background-color:#f6f7f9;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;bottom:0;left:0;right:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29487d;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f9;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}\n.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}"
            link ! rel "stylesheet" ! href "./foliage_files/main.css"
        body ! A.id "fo" ! A.style "overflow: visible;" $ do
            nav ! A.id "menu" ! class_ "mm-menu mm-horizontal mm-ismenu" $ do
                ul ! class_ "mm-list mm-panel mm-opened mm-current" ! A.id "mm-m0-p0" $ do
                    li $ a ! href "http://www.infinitejourneys.in/" $ "Home"
                    -- <li class="Selected">
                    li $ do
                        a ! class_ "mm-subopen" ! href "http://www.infinitejourneys.in/foliage-outdoors/#mm-m0-p1" $ mempty
                        a ! href "http://www.infinitejourneys.in/about-us/" $ "About Us"
                    li $ do
                        a ! class_ "mm-subopen" ! href "http://www.infinitejourneys.in/foliage-outdoors/#mm-m0-p2" $ mempty
                        a ! href "javacript:void(0);" $ "Our Services"
                    li $ a ! href "http://www.infinitejourneys.in/gallery/" $ "Gallery"
                    li $ a ! href "http://www.infinitejourneys.in/testimonials/" $ "Testimonials"
                    li $ do
                        a ! href "http://infinitejourneys.in/blog/" $ "Announcements"
                        --  <ul>
                        --                             <li><a href="javacript:void(0);">Blogs</a></li>
                        --                             <li><a href="javacript:void(0);">Forums</a></li>
                        -- </ul> 
                    li $ a ! href "http://www.infinitejourneys.in/fo/sms-alerts" $ "Live SMS Updates"
                    li $ a ! href "http://www.infinitejourneys.in/contact-us/" $ "Contact Us"
                ul ! class_ "mm-list mm-panel" ! A.id "mm-m0-p1" $ do
                    li ! class_ "mm-subtitle" $ a ! class_ "mm-subclose" ! href "http://www.infinitejourneys.in/foliage-outdoors/#mm-m0-p0" $ "About Us"
                    li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab1" $ "Our Story"
                    li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab2" $ "Our Vision & Values"
                    li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab3" $ "Why Us?"
                    li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab4" $ "Our People"
                ul ! class_ "mm-list mm-panel" ! A.id "mm-m0-p2" $ do
                    li ! class_ "mm-subtitle" $ a ! class_ "mm-subclose" ! href "http://www.infinitejourneys.in/foliage-outdoors/#mm-m0-p0" $ "Our Services"
                    li $ a ! href "http://www.infinitejourneys.in/infinite-journeys/" $ "Infinite Journeys"
                    li $ a ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Foliage Outdoors"
                    li $ a ! href "http://www.infinitejourneys.in/school-tours/" $ "School Tours"
                    li $ a ! href "http://www.infinitejourneys.in/corporate-tours/" $ "Corporate Tours"
            H.div ! class_ "mm-page" $ do
                H.div ! A.id "fb-root" ! class_ " fb_reset" $ do
                    H.div ! A.style "position: absolute; top: -10000px; height: 0px; width: 0px;" $ H.div $ do
                        iframe ! name "fb_xdm_frame_http" ! A.id "fb_xdm_frame_http" ! A.title "Facebook Cross Domain Communication Frame" ! tabindex "-1" ! src "./foliage_files/XBwzv5Yrm_1.html" ! A.style "border: none;" $ mempty
                        iframe ! name "fb_xdm_frame_https" ! A.id "fb_xdm_frame_https" ! A.title "Facebook Cross Domain Communication Frame" ! tabindex "-1" ! src "./foliage_files/XBwzv5Yrm_1(1).html" ! A.style "border: none;" $ mempty
                    H.div ! A.style "position: absolute; top: -10000px; height: 0px; width: 0px;" $ H.div mempty
                H.div ! A.id "preloaderFo" ! A.style "display: none;" $ H.div ! class_ "spinner" $ do
                    H.div ! class_ "spinner-container container1" $ do
                        H.div ! class_ "circle1" $ mempty
                        H.div ! class_ "circle2" $ mempty
                        H.div ! class_ "circle3" $ mempty
                        H.div ! class_ "circle4" $ mempty
                    H.div ! class_ "spinner-container container2" $ do
                        H.div ! class_ "circle1" $ mempty
                        H.div ! class_ "circle2" $ mempty
                        H.div ! class_ "circle3" $ mempty
                        H.div ! class_ "circle4" $ mempty
                    H.div ! class_ "spinner-container container3" $ do
                        H.div ! class_ "circle1" $ mempty
                        H.div ! class_ "circle2" $ mempty
                        H.div ! class_ "circle3" $ mempty
                        H.div ! class_ "circle4" $ mempty
                H.div ! class_ "top-container" $ do
                    H.div ! A.id "page" $ do
                        H.div ! A.id "header" $ a ! href "http://www.infinitejourneys.in/foliage-outdoors/#menu" $ mempty
                        H.div ! A.id "content" $ do
                            H.style ! type_ "text/css" $ ".topPhoneNo {\nposition: absolute;\nright: 0px;\ntop: 10px;\nfont-weight: bold;\nfont-size: 12px;\ncolor:#666;\n    width: 135px;\n}\n.topPhoneNo span{\ncolor:#666;\nfont-size:12px;\n}\n.topPhoneNoIcon {\ndisplay: block;\nwidth: 14px;\nheight: 18px;\nfloat: left;\nmargin-right: 2px;\npadding-top: 3px;\n}"
                            header $ H.div ! class_ "container" $ do
                                H.div ! class_ "three columns logo" $ do
                                    a ! href "http://www.infinitejourneys.in/infinite-journeys/" $ img ! src "./foliage_files/logoInfinite.png" ! class_ "logoIj lazy" ! A.title "Infinite Journeys" ! alt "Infinite Journeys Best Travel Agency in Pune" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/logoInfinite.png" ! A.style "display: inline;"
                                    a ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ img ! src "./foliage_files/logoFoliage.png" ! class_ "logoFo lazy" ! A.title "Foliage Outdoors" ! alt "Foliage Outdoors offering a diverse mix of Wildlife tours, Adventure camps, Trekking and Nature holidays." ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/logoFoliage.png" ! A.style "display: inline;"
                                H.div ! class_ "nine columns" $ H.div ! A.id "tabs" $ do
                                    H.div ! class_ "home-btns" $ do
                                        H.div ! class_ "call-btn" $ do
                                            img ! src "./foliage_files/phoneIcon.png" ! class_ "topPhoneNoIcon lazy" ! alt "Phone Icon" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/phoneIcon.png" ! A.style "display: block;"
                                            H.span "+91 - 20 - 66447777"
                                        --  <a href="http://online.infinitejourneys.in/" target="_blank">
                                        --                 <div class="first-btn">
                                        --                     <img src="http://www.infinitejourneys.in/templates/default/images/layout/airplane.png" alt="Airplane">
                                        --                     <h2>Flight Booking</h2>
                                        --                 </div>
                                        --             </a> 
                                        --  <a href="http://online.infinitejourneys.in/" target="_blank">
                                        --                 <div class="second-btn">
                                        --                     <img src="http://www.infinitejourneys.in/templates/default/images/layout/khat.png" alt="Hotel Booking">
                                        --                     <h2>Hotel Booking</h2>
                                        --                 </div>
                                        --             </a> 
                                    ul ! A.id "tabMenu" $ do
                                        li ! class_ "regular" $ a ! href "http://www.infinitejourneys.in/" ! A.title "Home" $ "Home"
                                        li ! class_ "regular dropdown" $ do
                                            a ! href "http://www.infinitejourneys.in/about-us/" ! A.title "About Us" $ "About Us"
                                            ul ! class_ "dropdownSub" $ do
                                                H.span ! class_ "topArrow" $ mempty
                                                li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab1" ! onclick "window.location.reload(true);" ! A.title "Our Story" $ "Our Story"
                                                li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab2" ! onclick "window.location.reload(true);" ! A.title "Our Vision & Values" $ "Our Vision & Values"
                                                li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab3" ! onclick "window.location.reload(true);" ! A.title "Why Us?" $ "Why Us?"
                                                li $ a ! href "http://www.infinitejourneys.in/about-us/#horizontalTab4" ! onclick "window.location.reload(true);" ! A.title "Our People" $ "Our People"
                                        li ! class_ "regular dropdown" $ do
                                            a ! href "javacript:void(0);" ! A.title "Our Services" $ "Our Services"
                                            ul ! class_ "dropdownSub" $ do
                                                H.span ! class_ "topArrow" $ mempty
                                                li $ a ! href "http://www.infinitejourneys.in/infinite-journeys/" ! A.title "Infinite Journeys" $ "Infinite Journeys"
                                                li $ a ! href "http://www.infinitejourneys.in/foliage-outdoors/" ! A.title "Foliage Outdoors" $ "Foliage Outdoors"
                                                li $ a ! href "http://www.infinitejourneys.in/school-tours/" ! A.title "School Tours" $ "School Tours"
                                                li $ a ! href "http://www.infinitejourneys.in/corporate-tours/" ! A.title "Corporate Services" $ "Corporate Services"
                                                li $ a ! href "http://www.infinitejourneys.in/travel-consultancy/" ! A.title "Travel Consultancy" $ "Travel Consultancy"
                                                li $ a ! href "http://www.infinitejourneys.in/india-travel-partner/" ! A.title "India Travel Partner (DMC)" $ "India Travel Partner (DMC)"
                                        li ! class_ "regular" $ a ! href "http://www.infinitejourneys.in/gallery/" ! A.title "Gallery" $ "Gallery"
                                        li ! class_ "regular" $ a ! href "http://www.infinitejourneys.in/testimonials/" ! A.title "Testimonials" $ "Testimonials"
                                        li ! class_ "regular dropdown" $ do
                                            a ! href "javacript:void(0);" ! A.title "Announcement" $ "Blog & Updates"
                                            ul ! class_ "dropdownSub" $ do
                                                H.span ! class_ "topArrow" $ mempty
                                                li $ a ! href "http://www.infinitejourneys.in/blog" ! A.title "Blog & Updates" $ "Blog & Updates"
                                                li $ a ! href "http://www.infinitejourneys.in/fo/sms-alerts" ! A.title "Live SMS Updates" $ "Live SMS Updates"
                                        li ! class_ "regular removePd" $ a ! href "http://www.infinitejourneys.in/contact-us/" ! A.title "Contact Us" $ "Contact Us"
                                        H.div ! class_ "clear" $ mempty
                            section ! A.id "banner" $ H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 412px;" $ ul ! class_ "bannerSlide" ! A.style "width: 1215%; position: relative; transition-duration: 2s; transform: translate3d(-3783px, 0px, 0px);" $ do
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" ! class_ "bx-clone" $ img ! src "./foliage_files/DSC_8800cc.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/DSC_8800cc.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/i24.JPG" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/i24.JPG" ! A.style "display: inline;"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/Cover_PicTarkarli-3.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/Cover_PicTarkarli-3.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/c24.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/c24.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/DSC_0516a1.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/DSC_0516a1.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/1_F.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/1_F.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/c23.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/c23.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/DSC_0203cc_2.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/DSC_0203cc_2.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/Kids.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/Kids.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/DSC_0545cc_2.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/DSC_0545cc_2.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" $ img ! src "./foliage_files/DSC_8800cc.jpg" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/DSC_8800cc.jpg"
                                    li ! A.style "float: left; list-style: none; position: relative; width: 1261px;" ! class_ "bx-clone" $ img ! src "./foliage_files/i24.JPG" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/banners/foliage/1920x620/i24.JPG"
                                H.div ! class_ "bx-controls bx-has-controls-direction bx-has-controls-auto" $ do
                                    H.div ! class_ "bx-controls-direction" $ do
                                        a ! class_ "bx-prev" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                        a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                    H.div ! class_ "bx-controls-auto" $ do
                                        H.div ! class_ "bx-controls-auto-item" $ a ! class_ "bx-start active" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Start"
                                        H.div ! class_ "bx-controls-auto-item" $ a ! class_ "bx-stop" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Stop"
                            section ! A.id "details" $ H.div ! class_ "container" $ H.div ! A.id "clientsDropDown" $ do
                                H.div ! A.id "clientsOpen" $ a ! href "javascript:void:(0);" $ p mempty
                                H.div ! A.id "clientsDashboard" ! class_ "demo1 boxShadow foreGround" $ H.form $ do
                                    H.div ! class_ "rowElem radioSection" $ do
                                        input ! type_ "radio" ! name "question" ! value "1" ! class_ "radiBatn1 folgeBasicSrch" ! A.id "ijRdoBtnAdvSrch"
                                        H.div ! class_ "coll1" ! A.title "Infinite Journeys" $ do
                                            H.div ! class_ "BtnSidetext1" $ do
                                                H.label ! for "ijRdoBtnAdvSrch" $ "Infinte Journeys"
                                                p "Plan Your Holiday"
                                                p (toHtml (show tm))
                                            H.div ! class_ "clear" $ mempty
                                        input ! type_ "radio" ! name "question" ! value "2" ! checked "checked" ! class_ "radiBatn2 folgeBasicSrch" ! A.id "foRdoBtnAdvSrch"
                                        H.div ! class_ "coll2" ! A.title "Foliage Outdoors" $ do
                                            H.div ! class_ "BtnSidetext" $ do
                                                H.label ! for "foRdoBtnAdvSrch" $ "Foliage Outdoors"
                                                p "Join Our Trips"
                                            H.div ! class_ "clear" $ mempty
                                        H.div ! class_ "clear" $ mempty
                                    H.div ! class_ "selectSectionBox" ! A.style "position:relative;" $ do
                                        H.div ! class_ "rowElem selectSection" ! A.id "viewByOnlyFoliage" ! A.title "View By" $ do
                                            H.label ! for "selectViewByName" $ "View By"
                                            select ! name "select2" ! class_ "selectViewByName" ! A.id "selectViewByName" $ do
                                                option ! value "" $ "-Select-"
                                                option ! value "all" $ "All"
                                                option ! value "month-wise" $ "Month-wise"
                                        H.div ! class_ "showBigLoadersImg" ! A.style "left:20%;position:absolute;top:40%" $ mempty
                                        H.div ! class_ "getResultsViewBy" $ do
                                            H.div ! class_ "rowElem selectSection foliageThemesBox" ! A.title "Themes" $ do
                                                H.label ! for "selectThemeTxtFO" $ "Themes"
                                                select ! name "select2" ! A.id "selectThemeTxtFO" $ do
                                                    option ! value "" $ "-Select Theme-"
                                                    option ! value " Kids Camp (8-10 yrs)" $ "Kids Camp (8-10 yrs)"
                                                    option ! value "International Tours " $ "International Tours"
                                                    option ! value "Kids Camp (10-12 yrs)" $ "Kids Camp (10-12 yrs)"
                                                    option ! value "Open Age : Backpacking Tours" $ "Open Age : Backpacking Tours"
                                                    option ! value "Open Age : Leisure Treks" $ "Open Age : Leisure Treks"
                                                    option ! value "Open Age : Treks & Adventure" $ "Open Age : Treks & Adventure"
                                                    option ! value "Open Age : Wildlife Tours" $ "Open Age : Wildlife Tours"
                                                    option ! value "Students : Adventure Camp & Treks" $ "Students : Adventure Camp & Treks"
                                                    option ! value "Students : Wildlife Camps" $ "Students : Wildlife Camps"
                                                    option ! value "Upcoming Tours" $ "Upcoming Tours"
                                                    option ! value "Youth Camps (14 to 22 years)" $ "Youth Camps (14 to 22 years)"
                                            H.div ! class_ "rowElem selectSection infiniteThemesBox" ! A.title "Themes" ! A.style "display: none;" $ do
                                                H.label ! for "selectThemeTxtIJ" $ "Themes"
                                                select ! name "select2" ! A.id "selectThemeTxtIJ" $ do
                                                    option ! value "" $ "-Select Theme-"
                                                    option ! value "Classic" $ "Classic"
                                                    option ! value "Family" $ "Family"
                                                    option ! value "Honeymoon" $ "Honeymoon"
                                                    option ! value "Off-the-track" $ "Off-the-track"
                                                    option ! value "Special Interest" $ "Special Interest"
                                            H.div ! class_ "rowElem selectSection showRegionCountry" ! A.title "Region" ! A.style "display: none;" $ do
                                                H.label ! for "selectContinentTxt" $ "Region"
                                                select ! name "select2" ! A.id "selectContinentTxt" ! class_ "regionNameVal" $ do
                                                    option ! value "##" $ "-Select Region-"
                                                    option ! value "AF##Africa" $ "Africa"
                                                    option ! value "AN##Antarctica" $ "Antarctica"
                                                    option ! value "AS##Asia" ! selected "selected" $ "Asia"
                                                    option ! value "OC##Australia and New Zealand" $ "Australia and New Zealand"
                                                    option ! value "EU##Europe" $ "Europe"
                                                    option ! value "NA##North America" $ "North America"
                                                    option ! value "SA##South America" $ "South America"
                                            H.div ! class_ "rowElem selectSection showRegionCountry" ! A.title "Country" ! A.style "display: none;" $ do
                                                H.label ! for "selectCountryTxt" $ "Country"
                                                select ! name "select2" ! A.id "selectCountryTxt" ! class_ "countryNameVal" $ do
                                                    option ! value "##" $ "-Select Country-"
                                                    option ! value "26##Bhutan" $ "Bhutan"
                                                    option ! value "39##Cambodia" $ "Cambodia"
                                                    option ! value "101##Hong Kong" $ "Hong Kong"
                                                    option ! value "104##India" ! selected "selected" $ "India"
                                                    option ! value "105##Indonesia" $ "Indonesia"
                                                    option ! value "262##Japan" $ "Japan"
                                                    option ! value "136##Malaysia" $ "Malaysia"
                                                    option ! value "137##Maldives" $ "Maldives"
                                                    option ! value "157##Nepal" $ "Nepal"
                                                    option ! value "168##Oman" $ "Oman"
                                                    option ! value "176##Philippines" $ "Philippines"
                                                    option ! value "201##Singapore" $ "Singapore"
                                                    option ! value "211##Sri Lanka" $ "Sri Lanka"
                                                    option ! value "222##Thailand" $ "Thailand"
                                                    option ! value "229##Turkey" $ "Turkey"
                                                    option ! value "235##United Arab Emirates" $ "United Arab Emirates"
                                                    option ! value "244##Vietnam" $ "Vietnam"
                                            H.div ! class_ "rowElem selectSection" ! A.id "foliageAgeGroupBox" ! A.title "Age Group" $ do
                                                H.label ! for "selectAgeGroupTxt" $ "Age Group"
                                                select ! name "select2" ! A.id "selectAgeGroupTxt" $ do
                                                    option ! value "" $ "-Select Age Group-"
                                                    option ! value "Kids (8 to 10 yrs)" $ "Kids (8 to 10 yrs)"
                                                    option ! value "Students (10 to 16 yrs)" $ "Students (10 to 16 yrs)"
                                                    option ! value "For All Ages" $ "For All Ages"
                                                    option ! value "Kids (10 to 12 yrs)" $ "Kids (10 to 12 yrs)"
                                                    option ! value "Students (14 to 22 yrs)" $ "Students (14 to 22 yrs)"
                                        H.div ! class_ "clear" $ mempty
                                    H.div ! class_ "rowElem serachBtnElem" $ do
                                        img ! src "./foliage_files/5.gif" ! A.style "display:none;" ! A.id "folgeSrchImgLdr" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/admin/img/loaders/5.gif"
                                        input ! type_ "button" ! value "Show Trips" ! class_ "searchBtn" ! A.id "searchFoliageRec"
                                    H.div ! class_ "clear" $ mempty
                            section ! A.id "bodyContainer" $ H.div ! class_ "container" $ do
                                H.div ! class_ "eight columns aboutOut" $ do
                                    h1 "About Foliage Outdoors"
                                    H.div ! class_ "moreAboutCompanies" $ do
                                        p $ do
                                            "Foliage Outdoors, an organisation working in the"
                                            strong "field of Eco-Tourism"
                                            "is a recognized name in the domain of"
                                            strong "'Wildlife, Adventure and Trekking Holidays"
                                            "'. In the past fifteen years, Foliage Outdoors has emerged as the only address offering a diverse mix of"
                                            strong "Wildlife tours, Adventure camps, Trekking and Nature holidays."
                                        p $ do
                                            "We have to our credit many successful eco-tours at places ranging from"
                                            strong "Ladakh in the Himalayas to Sri Lanka in South"
                                            ". Foliage Outdoors specialises in organizing"
                                            strong "Wildlife Safaris and Birding"
                                            "programmes to areas across the Indian Subcontinent."
                                H.div ! class_ "four columns" $ do
                                    --  <div class="anounce">
                                    --             <ul>
                                    --               <li>
                                    --                   <div class="overDivimg">
                                    --                   <h6>Announcements</h6>
                                    --                   <img src="http://www.infinitejourneys.in/templates/default/images/illustration/11anounce.jpg" style="margin-bottom:1px;">
                                    --                     <span>
                                    --     
                                    --                           <h6>Announcements</h6>
                                    --                           <a href="http://www.infinitejourneys.in/blog/category/announcements/" target="_blank" class="moreBt">More</a>     
                                    --                     </span>
                                    --                 </div>
                                    --               </li>
                                    --               <li>
                                    --                 <div class="overDivimg">
                                    --                   <h6>Live SMS Updates</h6>
                                    --                   <img src="http://www.infinitejourneys.in/templates/default/images/illustration/2smsupdate.jpg">
                                    --                     <span>
                                    --                           <h6>Live SMS Updates</h6>     
                                    --                           <a href="http://www.infinitejourneys.in/fo/sms-alerts" class="moreBt">More</a> 
                                    --                     </span>
                                    --                 </div>
                                    --               </li>
                                    --             </ul> 
                                    --             </div> 
                                    H.div ! class_ "foupdate" ! A.id "recentBlogs" $ section ! class_ "updates" $ do
                                        --  <a href="http://infinitejourneys.in/blog/category/foliage-outdoors/" target="_blank" class="updateLink gradient"> fo updates</a> 
                                        ul $ li $ H.div ! class_ "upFo" $ do
                                            h6 "Foliage Updates"
                                            -- <img width="300" height="235" src="http://www.infinitejourneys.in/blog/wp-content/uploads/2017/04/TrekTypes-Specific-Differences-300x235.jpg" class="attachment-medium wp-post-image" alt="TrekTypes - Specific Differences" />
                                            img ! src "./foliage_files/33foupdate.jpg"
                                            H.span $ do
                                                h6 "Foliage Updates"
                                                h3 "Back-To-Basics Vs All-Inc..."
                                                p "You may find “Back to Basics” and ..."
                                                a ! class_ "moreBt" ! href "http://www.infinitejourneys.in/blog/back2basicsvsallinclusive/" ! target "_blank" ! A.title "Permalink to Back-To-Basics Vs All-Inclusive Treks" $ "More"
                                    -- <div class="foupdate" id="recentBlogs"></div>
                                    H.div ! class_ "clear" $ mempty
                                H.div ! class_ "twelve columns divider" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Upcoming Tours"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "We have lined-up exhaustive and exclusive tours for the discerning travellers. Check out!"
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=4&category=Upcoming%20Tours" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 6215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/DSCN8781__Medium__1491644998.JPG" ! alt "Hamta Pass - Chandratal Trek (All inclusive)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/DSCN8781__Medium__1491644998.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandratal Trek (All inclusive)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 10, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "28500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             28500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandratal-trek-all-inclusive/010817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 10, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/valley_of_flowers_14_1464260016.jpg" ! alt "Valley of Flowers Trek ( All Inclusive )" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/valley_of_flowers_14_1464260016.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers Trek ( All Inclusive )"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 11, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "36200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             36200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-trek-all-inclusive/020817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 11, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_4103_1493980232.jpg" ! alt "Valley of Flowers (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_4103_1493980232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  4, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 11, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "21500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             21500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-back-to-basic/040817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 11, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  9, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 15, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/090817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 15, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_2108a_1491387080.jpg" ! alt "Explore Ladakh - The Backpacking Way'  with Kargil  " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_2108a_1491387080.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore Ladakh - The Backpacking Way'  with Kargil"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "31000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             31000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-ladakh-the-backpacking-way-with-kargil/100817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7777_1493977559.JPG" ! alt "Hamta Pass - Chandra Tal Trek (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7777_1493977559.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandra Tal Trek (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 17, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             19900 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandra-tal-trek-back-to-basic/100817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure"
                                                    --                                                                         <p>Ends: Aug 17, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474548320.jpg" ! alt "Kenya Migration Safari " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474548320.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kenya Migration Safari"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 11, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 20, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2920\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2920 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kenya-migration-safari-50/110817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 20, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/valley_of_flowers_14_1464260016.jpg" ! alt "Valley of Flowers Trek ( All Inclusive )" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/valley_of_flowers_14_1464260016.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers Trek ( All Inclusive )"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 11, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 20, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "36200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             36200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-trek-all-inclusive/110817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 20, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7777_1493977559.JPG" ! alt "Hamta Pass - Chandra Tal Trek (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7777_1493977559.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandra Tal Trek (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 31, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             19900 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandra-tal-trek-back-to-basic/310817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure"
                                                    --                                                                         <p>Ends: Sep  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kamshet_Winter_2017_1500288777.jpg" ! alt "Kamshet Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kamshet_Winter_2017_1500288777.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kamshet Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  3, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "7500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             7500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kamshet-adventure-camp-48/010917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  3, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  8, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  8, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_4103_1493980232.jpg" ! alt "Valley of Flowers (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_4103_1493980232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  9, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "21500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             21500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-back-to-basic/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  9, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7006b_1500296224.jpg" ! alt "Bera - Leopards of Jawai" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7006b_1500296224.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bera - Leopards of Jawai"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  6, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "30500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  27500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bera-leopards-of-jawai/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  6, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Best_of_Ladakh_1499492543.jpg" ! alt "Best of Ladakh - Sept'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Best_of_Ladakh_1499492543.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Best of Ladakh - Sept'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Leisure Treks,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  8, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep 14, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "55500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             55500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/best-of-ladakh-sept17/080917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Leisure Treks   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep 14, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499856789.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499856789.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep 30, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  5, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/300917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  5, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499512186.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499512186.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep 30, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  5, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/300917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  5, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499514329.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499514329.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  6, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/011017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  6, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Pench_Winter_2017_1499517358.jpg" ! alt "Pench National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Pench_Winter_2017_1499517358.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Pench National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/pench-national-park-01/021017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499925191.JPG" ! alt "Bandhavgarh Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499925191.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-wildlife-camp-19/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855755.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855755.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499864699.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499864699.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Classic_Kenya_thumb_1_1474610607.jpg" ! alt "Classic Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Classic_Kenya_thumb_1_1474610607.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 16, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 22, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        1950\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             1950 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-oct17/161017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 22, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Pench_Winter_2017_1499856315.jpg" ! alt "Pench National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Pench_Winter_2017_1499856315.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Pench National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 16, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/pench-national-park-01/161017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_5679b_1491397041.jpg" ! alt "Best of Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_5679b_1491397041.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Best of Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 20, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 28, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2225\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2225 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/best-of-kenya-oct17/201017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 28, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499926311.jpg" ! alt "Kanha Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499926311.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-wildlife-camp-13/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499865872.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499865872.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499929416.jpg" ! alt "Panna Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499929416.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  20500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-wildlife-camp-46/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kamshet_Winter_2017_1500295068.jpg" ! alt "Kamshet Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kamshet_Winter_2017_1500295068.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kamshet Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 24, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "7500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             7500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kamshet-adventure-camp-48/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 24, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Rajgad_Winter_2017_1500292405.JPG" ! alt "Rajgad Base Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Rajgad_Winter_2017_1500292405.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Rajgad Base Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (8-10 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 24, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "6400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             6400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/rajgad-base-camp-16/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (8-10 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 24, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_S_Winter_2017_1500615800.JPG" ! alt "Ranthambhore Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_S_Winter_2017_1500615800.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  21500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-wildlife-camp-10/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kolvan_Winter_2017_1500294232.jpg" ! alt "Whistling Woods - Kolvan" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kolvan_Winter_2017_1500294232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Whistling Woods - Kolvan"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (8-10 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 25, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "6400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             6400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/whistling-woods-kolvan-47/231017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (8-10 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 25, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panchgani_Space_Adventure_2017_1500290231.jpg" ! alt "Panchgani Space Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panchgani_Space_Adventure_2017_1500290231.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panchgani Space Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "9300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             9300 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panchgani-space-adventure-camp/251017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bhutan_Thumbnail_1498738560.jpg" ! alt "Bhutan - Land of the Thunder Dragon - Nov'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bhutan_Thumbnail_1498738560.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bhutan - Land of the Thunder Dragon - Nov'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 29, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov  4, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "52000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             52000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bhutan-land-of-the-thunder-dragon-nov17/291017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov  4, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bhutan_Thumbnail_1498738560.jpg" ! alt "Bhutan - Land of the Thunder Dragon - Nov'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bhutan_Thumbnail_1498738560.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bhutan - Land of the Thunder Dragon - Nov'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 12, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "52000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             52000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bhutan-land-of-the-thunder-dragon-nov17/121117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954052.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954052.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 12, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/121117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380549.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380549.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 13, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/131117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499519194.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499519194.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 13, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/131117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499864699.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499864699.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 30, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/251117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 30, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 30, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/251117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 30, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855866.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855866.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/021217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  3, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec  8, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/031217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec  8, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Foliage_Outdoors_-_TANZANIA_SAFARI_-_DISCOVER_THE_ENDLESS_PLAINS_-_DEC_17__4__1490259078.jpg" ! alt "Tanzania Safari - DEC'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Foliage_Outdoors_-_TANZANIA_SAFARI_-_DISCOVER_THE_ENDLESS_PLAINS_-_DEC_17__4__1490259078.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Tanzania Safari - DEC'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  8, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 15, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        3460\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             3460 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/tanzania-safari-dec17/081217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 15, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954301.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954301.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/101217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Tadoba_Winter_2017_1499851094.JPG" ! alt "Tadoba Andhari Tiger Reserve" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Tadoba_Winter_2017_1499851094.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Tadoba Andhari Tiger Reserve"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 17, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/tadoba-andhari-tiger-reserve-09/141217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 17, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954419.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954419.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan  1, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan  1, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 28, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 28, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bharatpur_Chambal_Winter_2017_1500357970.jpg" ! alt "Bharatpur-Chambal Birding Tour" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bharatpur_Chambal_Winter_2017_1500357970.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bharatpur-Chambal Birding Tour"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bharatpur-chambal-birding-tour/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380591.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380591.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 26, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 31, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/261217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 31, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499866128.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499866128.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 26, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 31, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/261217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 31, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380647.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380647.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 23, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/230118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499866128.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499866128.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 23, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/230118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bharatpur_Chambal_Winter_2017_1500359207.jpg" ! alt "Bharatpur-Chambal Birding Tour" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bharatpur_Chambal_Winter_2017_1500359207.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bharatpur-Chambal Birding Tour"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 24, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bharatpur-chambal-birding-tour/240118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Sunderbans---Dec_06-383b_1500962005.jpg" ! alt "Sunderbans - The Land of the Swimming Swamp Tigers!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Sunderbans---Dec_06-383b_1500962005.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Sunderbans - The Land of the Swimming Swamp Tigers!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 24, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "37500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             37500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/sunderbans-the-land-of-the-swimming-swamp-tigers/240118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7006b_1500296352.jpg" ! alt "Bera - Leopards of Jawai" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7006b_1500296352.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bera - Leopards of Jawai"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 25, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 29, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  27500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bera-leopards-of-jawai/250118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 29, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 10, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 15, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/100218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 15, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855866.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855866.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 17, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 22, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/170218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 22, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 18, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 23, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/180218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 23, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Open Age : Wildlife Tours"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "With an experience of over 17 years coupled with a Team of multifaceted Wildlife Experts and hand-picked Wildlife Lodges, we ensure that your experience is nothing but top-notch!"
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=15&category=Open%20Age%20:%20Wildlife%20Tours" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 3515%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  9, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 15, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/090817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 15, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474548320.jpg" ! alt "Kenya Migration Safari " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474548320.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kenya Migration Safari"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 11, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 20, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2920\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2920 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kenya-migration-safari-50/110817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 20, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  8, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  8, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7006b_1500296224.jpg" ! alt "Bera - Leopards of Jawai" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7006b_1500296224.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bera - Leopards of Jawai"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  6, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "30500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  27500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bera-leopards-of-jawai/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  6, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499856789.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499856789.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep 30, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  5, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/300917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  5, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499512186.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499512186.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep 30, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  5, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/300917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  5, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499514329.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499514329.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  6, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/011017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  6, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Pench_Winter_2017_1499517358.jpg" ! alt "Pench National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Pench_Winter_2017_1499517358.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Pench National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/pench-national-park-01/021017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855755.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855755.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499864699.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499864699.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Classic_Kenya_thumb_1_1474610607.jpg" ! alt "Classic Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Classic_Kenya_thumb_1_1474610607.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 16, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 22, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        1950\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             1950 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-oct17/161017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 22, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Pench_Winter_2017_1499856315.jpg" ! alt "Pench National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Pench_Winter_2017_1499856315.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Pench National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 16, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/pench-national-park-01/161017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_5679b_1491397041.jpg" ! alt "Best of Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_5679b_1491397041.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Best of Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 20, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 28, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2225\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2225 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/best-of-kenya-oct17/201017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 28, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499865872.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499865872.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499519194.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499519194.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 13, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/131117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499864699.jpg" ! alt "Kanha National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499864699.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 30, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-national-park-37/251117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 30, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 30, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "26900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/251117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 30, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855866.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855866.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/021217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  3, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec  8, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/031217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec  8, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Tadoba_Winter_2017_1499851094.JPG" ! alt "Tadoba Andhari Tiger Reserve" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Tadoba_Winter_2017_1499851094.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Tadoba Andhari Tiger Reserve"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 17, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/tadoba-andhari-tiger-reserve-09/141217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 17, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 28, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 28, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bharatpur_Chambal_Winter_2017_1500357970.jpg" ! alt "Bharatpur-Chambal Birding Tour" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bharatpur_Chambal_Winter_2017_1500357970.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bharatpur-Chambal Birding Tour"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bharatpur-chambal-birding-tour/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499866128.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499866128.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 26, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 31, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/261217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 31, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017_1499866128.jpg" ! alt "Little Rann of Kutch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017_1499866128.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 23, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-39/230118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bharatpur_Chambal_Winter_2017_1500359207.jpg" ! alt "Bharatpur-Chambal Birding Tour" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bharatpur_Chambal_Winter_2017_1500359207.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bharatpur-Chambal Birding Tour"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 24, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             22400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bharatpur-chambal-birding-tour/240118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Sunderbans---Dec_06-383b_1500962005.jpg" ! alt "Sunderbans - The Land of the Swimming Swamp Tigers!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Sunderbans---Dec_06-383b_1500962005.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Sunderbans - The Land of the Swimming Swamp Tigers!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 24, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "37500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             37500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/sunderbans-the-land-of-the-swimming-swamp-tigers/240118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7006b_1500296352.jpg" ! alt "Bera - Leopards of Jawai" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7006b_1500296352.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bera - Leopards of Jawai"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 25, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 29, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "27500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  27500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bera-leopards-of-jawai/250118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 29, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499858237.jpg" ! alt "Panna National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499858237.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 10, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 15, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-national-park-09/100218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 15, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499855866.jpg" ! alt "Bandhavgarh National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499855866.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 17, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 22, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  23900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-national-park-15/170218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 22, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_Winter_2017_1499857275.jpg" ! alt "Ranthambhore National Park" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_Winter_2017_1499857275.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore National Park"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Wildlife Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Feb 18, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Feb 23, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24800\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  24800                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-national-park-41/180218" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Feb 23, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Students : Wildlife Camps"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ do
                                        p "Nurture your love for the wild with our gifted and experienced wildlife experts and birding specialists!"
                                        p mempty
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=13&category=Students%20:%20Wildlife%20Camps" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 1015%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bandhavgarh_Winter_2017_1499925191.JPG" ! alt "Bandhavgarh Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bandhavgarh_Winter_2017_1499925191.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bandhavgarh Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 14, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bandhavgarh-wildlife-camp-19/141017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kanha_Winter_2017_1499926311.jpg" ! alt "Kanha Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kanha_Winter_2017_1499926311.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kanha Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19900                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kanha-wildlife-camp-13/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panna_Winter_2017_1499929416.jpg" ! alt "Panna Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panna_Winter_2017_1499929416.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panna Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 21, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 26, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "23500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  20500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panna-wildlife-camp-46/211017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 26, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Ranthambhore_S_Winter_2017_1500615800.JPG" ! alt "Ranthambhore Wildlife Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Ranthambhore_S_Winter_2017_1500615800.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Ranthambhore Wildlife Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "24500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  21500                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/ranthambhore-wildlife-camp-10/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380549.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380549.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 13, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "22300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/131117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380591.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380591.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 26, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 31, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/261217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 31, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/LRK_Winter_2017__2__1500380647.jpg" ! alt "Little Rann of Kutch Students' Batch" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/LRK_Winter_2017__2__1500380647.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Little Rann of Kutch Students' Batch"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Students : Wildlife Camps,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Jan 23, 2018"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan 28, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                                                  19300                                     
                                                            --                                                                  
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/little-rann-of-kutch-students-batch/230118" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Students : Wildlife Camps   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan 28, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Students (10 to 16 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Kids Camp"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "Staying away from home itself is one adventure for the kids. We here make their first experience the best one. Kids from 8 to 10 yrs and 10 to 12 yrs are considered for these camps."
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=12&category=Kids%20Camp" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kamshet_Winter_2017_1500288777.jpg" ! alt "Kamshet Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kamshet_Winter_2017_1500288777.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kamshet Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  3, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "7500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             7500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kamshet-adventure-camp-48/010917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  3, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kamshet_Winter_2017_1500295068.jpg" ! alt "Kamshet Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kamshet_Winter_2017_1500295068.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kamshet Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 24, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "7500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             7500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kamshet-adventure-camp-48/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 24, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Rajgad_Winter_2017_1500292405.JPG" ! alt "Rajgad Base Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Rajgad_Winter_2017_1500292405.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Rajgad Base Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (8-10 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 22, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 24, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "6400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             6400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/rajgad-base-camp-16/221017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (8-10 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 24, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kolvan_Winter_2017_1500294232.jpg" ! alt "Whistling Woods - Kolvan" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kolvan_Winter_2017_1500294232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Whistling Woods - Kolvan"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (8-10 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 25, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "6400\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             6400 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/whistling-woods-kolvan-47/231017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (8-10 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 25, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (8 to 10 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Panchgani_Space_Adventure_2017_1500290231.jpg" ! alt "Panchgani Space Adventure Camp" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Panchgani_Space_Adventure_2017_1500290231.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Panchgani Space Adventure Camp"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Kids Camp (10-12 yrs), Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 25, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 27, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "9300\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             9300 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/panchgani-space-adventure-camp/251017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Kids Camp (10-12 yrs)   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 27, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "Kids (10 to 12 yrs)"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "International Tours"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "Kenya Migration Safari and Tanzania Serengeti Safari, Birding Tour to Bhutan, Trek to Everest and Annapurna Base Camp in Nepal...and much more!!!"
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=6&category=International%20Tours" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 1115%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  9, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 15, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/090817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 15, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474548320.jpg" ! alt "Kenya Migration Safari " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474548320.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Kenya Migration Safari"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 11, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 20, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2920\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2920 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/kenya-migration-safari-50/110817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 20, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Kenya_Thumb_1474612205.jpg" ! alt "Classic Kenya - Migration Special" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Kenya_Thumb_1474612205.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Migration Special"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  8, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2290\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2290 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-migration-special/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  8, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Classic_Kenya_thumb_1_1474610607.jpg" ! alt "Classic Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Classic_Kenya_thumb_1_1474610607.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Classic Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 16, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 22, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        1950\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             1950 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/classic-kenya-oct17/161017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 22, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_5679b_1491397041.jpg" ! alt "Best of Kenya - Oct'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_5679b_1491397041.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Best of Kenya - Oct'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Open Age :...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 20, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Oct 28, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        2225\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             2225 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/best-of-kenya-oct17/201017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Open Age : Wildlife Tours   Upcoming Tours"
                                                    --                                                                         <p>Ends: Oct 28, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bhutan_Thumbnail_1498738560.jpg" ! alt "Bhutan - Land of the Thunder Dragon - Nov'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bhutan_Thumbnail_1498738560.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bhutan - Land of the Thunder Dragon - Nov'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Oct 29, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov  4, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "52000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             52000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bhutan-land-of-the-thunder-dragon-nov17/291017" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov  4, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Bhutan_Thumbnail_1498738560.jpg" ! alt "Bhutan - Land of the Thunder Dragon - Nov'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Bhutan_Thumbnail_1498738560.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Bhutan - Land of the Thunder Dragon - Nov'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 12, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 18, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "52000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             52000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/bhutan-land-of-the-thunder-dragon-nov17/121117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 18, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Foliage_Outdoors_-_TANZANIA_SAFARI_-_DISCOVER_THE_ENDLESS_PLAINS_-_DEC_17__4__1490259078.jpg" ! alt "Tanzania Safari - DEC'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Foliage_Outdoors_-_TANZANIA_SAFARI_-_DISCOVER_THE_ENDLESS_PLAINS_-_DEC_17__4__1490259078.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Tanzania Safari - DEC'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>International Tours , Upcoming...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec  8, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 15, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            "USD\n\n                                                                                                                        3460\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             3460 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/tanzania-safari-dec17/081217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "International Tours    Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 15, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Open Age : Leisure Treks"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "Treks need not always be about hardships! Enjoy the luxury of a“holiday” while trekking. Enjoy the views, the food and the pristine mountain air without having to stay in a Tent!"
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=16&category=Open%20Age%20:%20Leisure%20Treks" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 715%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_4103_1493980232.jpg" ! alt "Valley of Flowers (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_4103_1493980232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  4, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 11, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "21500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             21500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-back-to-basic/040817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 11, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_2108a_1491387080.jpg" ! alt "Explore Ladakh - The Backpacking Way'  with Kargil  " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_2108a_1491387080.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore Ladakh - The Backpacking Way'  with Kargil"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "31000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             31000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-ladakh-the-backpacking-way-with-kargil/100817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_4103_1493980232.jpg" ! alt "Valley of Flowers (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_4103_1493980232.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  9, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "21500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             21500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-back-to-basic/020917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep  9, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/Best_of_Ladakh_1499492543.jpg" ! alt "Best of Ladakh - Sept'17" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/Best_of_Ladakh_1499492543.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Best of Ladakh - Sept'17"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Leisure Treks,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Sep  8, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep 14, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "55500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             55500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/best-of-ladakh-sept17/080917" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Leisure Treks   Upcoming Tours"
                                                    --                                                                         <p>Ends: Sep 14, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Open Age : Treks & Adventure"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 $ p "If you love the Himalayas, care for low-impact tourism and Camping in tents under the starlit sky. Aim “high” and trek you way to glory :)"
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=18&category=Open%20Age%20:%20Treks%20&%20Adventure" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 815%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/DSCN8781__Medium__1491644998.JPG" ! alt "Hamta Pass - Chandratal Trek (All inclusive)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/DSCN8781__Medium__1491644998.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandratal Trek (All inclusive)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  1, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 10, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "28500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             28500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandratal-trek-all-inclusive/010817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 10, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/valley_of_flowers_14_1464260016.jpg" ! alt "Valley of Flowers Trek ( All Inclusive )" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/valley_of_flowers_14_1464260016.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers Trek ( All Inclusive )"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug  2, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 11, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "36200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             36200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-trek-all-inclusive/020817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 11, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7777_1493977559.JPG" ! alt "Hamta Pass - Chandra Tal Trek (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7777_1493977559.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandra Tal Trek (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 17, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             19900 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandra-tal-trek-back-to-basic/100817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure"
                                                    --                                                                         <p>Ends: Aug 17, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/valley_of_flowers_14_1464260016.jpg" ! alt "Valley of Flowers Trek ( All Inclusive )" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/valley_of_flowers_14_1464260016.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Valley of Flowers Trek ( All Inclusive )"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 11, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 20, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "36200\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             36200 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/valley-of-flowers-trek-all-inclusive/110817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 20, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_7777_1493977559.JPG" ! alt "Hamta Pass - Chandra Tal Trek (Back to Basic)" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_7777_1493977559.JPG"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Hamta Pass - Chandra Tal Trek (Back to Basic)"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Treks & Adventure</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 31, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Sep  7, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "19900\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             19900 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/hamta-pass-chandra-tal-trek-back-to-basic/310817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Treks & Adventure"
                                                    --                                                                         <p>Ends: Sep  7, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns dividerSingle" $ mempty
                                H.div ! class_ "three columns" $ do
                                    h2 ! class_ "homeStyle" $ "Open Age : Backpacking Tours"
                                    H.div ! class_ "moreAboutSectionTours" $ h3 mempty
                                H.div ! class_ "nine columns" $ H.div ! class_ "card vCardTwo" $ H.div ! class_ "card vCardOne" $ do
                                    H.div ! class_ "threeBtns" $ a ! class_ "seeAll" ! href "http://www.infinitejourneys.in/fo/see-all?id=21&category=Open%20Age%20:%20Backpacking%20Tours" $ "See All"
                                    H.div ! class_ "bx-wrapper" ! A.style "max-width: 100%; margin: 0px auto;" $ do
                                        H.div ! class_ "bx-viewport" ! A.style "width: 100%; overflow: hidden; position: relative; height: 435px;" $ ul ! class_ "vCardSlide" ! A.style "width: 715%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);" $ do
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/IMG_2108a_1491387080.jpg" ! alt "Explore Ladakh - The Backpacking Way'  with Kargil  " ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/IMG_2108a_1491387080.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore Ladakh - The Backpacking Way'  with Kargil"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Aug 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Aug 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "31000\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             31000 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-ladakh-the-backpacking-way-with-kargil/100817" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Aug 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954052.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954052.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Nov 12, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Nov 21, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/121117" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Nov 21, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954301.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954301.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 10, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Dec 19, 2017"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/101217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Dec 19, 2017</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            li ! class_ "boxImages" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ do
                                                H.div ! class_ "shadowBox" $ img ! src "./foliage_files/NEBP17.1_1499954419.jpg" ! alt "Explore North East : The Backpacking Way !!!" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/uploads/gallery/foliage/220x190/NEBP17.1_1499954419.jpg"
                                                H.div ! class_ "hideContent" $ do
                                                    H.div ! class_ "countriName" $ p "Explore North East : The Backpacking Way !!!"
                                                    --                                                <div class="countriAdven">
                                                    --                                                 <p>Open Age : Backpacking Tours,...</p>
                                                    --                                               </div> 
                                                    --                                              
                                                    H.div ! class_ "dates-new" $ do
                                                        p ! class_ "day" $ do
                                                            "TOURS STARTS :"
                                                            H.span "Dec 23, 2017"
                                                        p $ do
                                                            "TOURS ENDS :"
                                                            H.span "Jan  1, 2018"
                                                    H.div ! class_ "prices-new" $ do
                                                        h1 $ do
                                                            img ! src "./foliage_files/r.png" ! class_ "lazy" ! dataAttribute "original" "../uploads/gallery/site//originals/r.png"
                                                            "35500\n                                                            /-"
                                                            H.span "onwards"
                                                            --   comment if necessary   
                                                            --                                      
                                                            --                                                             35500 
                                                            --                                                              
                                                        --  /-<span>onwards</span></h1> 
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                a ! class_ "hoverDiv" ! href "http://www.infinitejourneys.in/camp/explore-north-east-the-backpacking-way-29/231217" $ H.div ! class_ "noDates" $ do
                                                    --   <p class="day">INTERNATIONAL TOURS</p>
                                                    --                                                                          <p >OPEN AGE : WILDLIFE TOURS,</p>
                                                    --                                                                          <p>UPCOMING TOURS ENQUIRE</p> 
                                                    p ! class_ "day" $ "Open Age : Backpacking Tours   Open Age : Leisure Treks   Open Age : Treks & Adventure   Upcoming Tours"
                                                    --                                                                         <p>Ends: Jan  1, 2018</p>    
                                                    --                                                                      
                                                    H.div ! class_ "botHoverDiv" $ do
                                                        h6 "For All Ages"
                                                        H.span "book now"
                                                    H.div ! class_ "clear" $ mempty
                                            H.div ! class_ "clear" ! A.style "float: left; list-style: none; position: relative; width: 700px; margin-right: 20px;" $ mempty
                                        H.div ! class_ "bx-controls bx-has-controls-direction" $ H.div ! class_ "bx-controls-direction" $ do
                                            a ! class_ "bx-prev disabled" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Prev"
                                            a ! class_ "bx-next" ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ "Next"
                                H.div ! class_ "twelve columns divider" $ mempty
                            footer $ do
                                section ! class_ "footTop" $ H.div ! class_ "container" $ do
                                    H.div ! class_ "two columns coll" $ do
                                        ul $ do
                                            h5 "Foliage Outdoors"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/-kids-camp-8-10-yrs?id=NjQ=" ! A.title " Kids Camp (8-10 yrs)" $ "Kids Camp (8-10 yrs)"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/international-tours-?id=NTY=" ! A.title "International Tours " $ "International Tours"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/kids-camp-10-12-yrs?id=NTE=" ! A.title "Kids Camp (10-12 yrs)" $ "Kids Camp (10-12 yrs)"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/open-age-backpacking-tours?id=NjU=" ! A.title "Open Age : Backpacking Tours" $ "Open Age : Backpacking Tours"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/open-age-leisure-treks?id=NjA=" ! A.title "Open Age : Leisure Treks" $ "Open Age : Leisure Treks"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/open-age--treks--adventure?id=NTI=" ! A.title "Open Age : Treks & Adventure" $ "Open Age : Treks & Adventure"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/open-age--wildlife-tours?id=NTM=" ! A.title "Open Age : Wildlife Tours" $ "Open Age : Wildlife Tours"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/students--adventure-camp--treks?id=MTc=" ! A.title "Students : Adventure Camp & Treks" $ "Students : Adventure Camp & Treks"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/students--wildlife-camps?id=MTY=" ! A.title "Students : Wildlife Camps" $ "Students : Wildlife Camps"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/upcoming-tours?id=NTg=" ! A.title "Upcoming Tours" $ "Upcoming Tours"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/fo/theme/youth-camps-14-to-22-years?id=NTk=" ! A.title "Youth Camps (14 to 22 years)" $ "Youth Camps (14 to 22 years)"
                                            --  <li><h6><a href="http://www.infinitejourneys.in/fo/see-all?id=1&category=upcoming_tours" title="Upcoming Tours">Upcoming Tours</a></h6></li>
                                            --                 <li><h6><a href="http://www.infinitejourneys.in/fo/see-all?id=2&category=top_picks_country&country=India" title="Top Picks India">Top Picks India</a></h6></li>
                                            --                 <li><h6><a href="http://www.infinitejourneys.in/fo/see-all?id=3&category=foliage_outdoors_exclusive" title="Foliage Outdoors Exclusive">Foliage Outdoors Exclusive</a></h6></li> 
                                            --  <li><h6><a href="javascript:void(0);" class="payUpolicy" title="Terms and Conditions">Terms and Conditions</a></h6></li> 
                                        H.div ! class_ "vDivider" $ mempty
                                    H.div ! class_ "two columns coll" $ do
                                        ul $ do
                                            h5 "Infinite Journeys"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/theme/classic?id=MzE=" ! A.title "Classic" $ "Classic"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/theme/family?id=MjY=" ! A.title "Family" $ "Family"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/theme/honeymoon?id=Mjc=" ! A.title "Honeymoon" $ "Honeymoon"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/theme/off-the-track?id=Mjk=" ! A.title "Off-the-track" $ "Off-the-track"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/theme/special-interest?id=MzI=" ! A.title "Special Interest" $ "Special Interest"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/see-all?id=1&category=top_picks_country&country=India" ! A.title "Top Picks India" $ "Top Picks India"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/see-all?id=2&category=top_picks_international" ! A.title "Top Picks International" $ "Top Picks International"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/ij/see-all?id=3&category=infinite_journeys_exclusives" ! A.title "Infinite Journeys Exclusives" $ "Infinite Journeys Exclusives"
                                            li $ h6 $ a ! href "http://www.infinitejourneys.in/europe-tour-packages/" ! A.title "Europe Tour Packages" $ "Europe Tour Packages"
                                        H.div ! class_ "vDivider" $ mempty
                                    H.div ! class_ "three columns contactColl coll" $ do
                                        h5 "Contact"
                                        p ! A.title "Phone: +91 - 20 - 66447777" $ do
                                            H.span "Phone:"
                                            strong "+91 - 20 - 66447777"
                                        p ! A.title "Email: web@infinitejourneys.in" $ do
                                            H.span "Email:"
                                            a ! href "mailto:web@infinitejourneys.in" ! A.style "text-decoration: none;" $ strong "web@infinitejourneys.in"
                                        p ! A.title "Address: 103, Mahadkar Chambers, Karve Road, Near Kothrud McDonalds, Kothrud, Pune 411038.." $ do
                                            H.span "Address:"
                                            strong "Main Office"
                                            strong mempty
                                        p $ strong "103, Mahadkar Chambers, Karve Road, Near Kothrud McDonalds, Kothrud, Pune 411038.."
                                        p mempty
                                        br
                                        p $ do
                                            H.span "Address:"
                                            strong "Aundh Branch"
                                        p $ strong "Plot Number : A-1 (AB) Second Floor, Abhimanshree Society, Above Hotel Abhiman, Near B U Bhandari Showroom, Opp St Joseph  School NCL - Pashan Road, Aundh, Pune 411008."
                                    H.div ! class_ "one columns coll" $ H.div ! class_ "vDivider" $ mempty
                                    H.div ! class_ " four columns coll logocoll" $ do
                                        h5 "Member of"
                                        img ! class_ "logo1 lazy" ! src "./foliage_files/tafi.png" ! alt "TAFI" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/tafi.png"
                                        img ! class_ "logo2 lazy" ! src "./foliage_files/iaai.png" ! alt "IAAI" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/iaai.png"
                                        img ! class_ "logo3 lazy" ! src "./foliage_files/etaa.png" ! alt "ETAA" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/etaa.png"
                                        img ! class_ "logo4 lazy" ! src "./foliage_files/taap.png" ! alt "TAAP" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/taap.png"
                                        img ! class_ "logo5 lazy" ! src "./foliage_files/adtoi.png" ! alt "ADTOI" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/adtoi.png"
                                        img ! class_ "logo6 lazy" ! src "./foliage_files/atom.png" ! alt "ATOM" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/atom.png"
                                        img ! class_ "logo7 lazy" ! src "./foliage_files/advIndia.png" ! alt "Adventure Tour Operators Association of India" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/advIndia.png"
                                        h4 "recognised by"
                                        img ! class_ "logo8 lazy" ! src "./foliage_files/govInd.png" ! alt "Ministry of Tourism Government of India" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/govInd.png"
                                        img ! class_ "logo9 lazy" ! src "./foliage_files/imfo.png" ! alt "Recognizes by India Mountaineering Foundation" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/illustration/imfo.png"
                                section ! class_ "footBot" $ H.div ! class_ "container" $ do
                                    H.div ! class_ "five columns" $ do
                                        --  <ul class="social">
                                        --             <a href="https://www.facebook.com/Foliagers" target="_blank" title="Facebook"><li class="fb"></li></a>
                                        --                 <a href="https://twitter.com/foliageoutdoors" target="_blank" title="Twitter"><li class="tw"></li></a>
                                        --                 <a href="javascript:void(0);" title="Google Plus"><li class="gPlus"></li></a>
                                        --                 <a href="https://www.youtube.com/user/foliageoutdoors" target="_blank" title="You Tube"><li class="yTube"></li></a>
                                        --             </ul> 
                                        ul ! class_ "social" $ do
                                            a ! href "javascript:void(0);" ! A.title "Facebook" ! class_ "socialPopUp" ! A.id "socialFb" $ li ! class_ "fb" $ mempty
                                            --  <a href="javascript:void(0);" title="Twitter" class="socialPopUp" id="socialTw"><li class="tw"></li></a> 
                                            a ! href "https://twitter.com/foliageoutdoors" ! target "_blank" ! A.title "Twitter" $ li ! class_ "tw" $ mempty
                                            --  <a href="javascript:void(0);" title="Google Plus" class="socialPopUp" id="socialGplus"><li class="gPlus"></li></a> 
                                            a ! href "https://plus.google.com/+foliageoutdoors/about" ! target "_blank" ! A.title "Google Plus" $ li ! class_ "gPlus" $ mempty
                                            a ! href "https://www.youtube.com/user/foliageoutdoors" ! target "_blank" ! A.title "You Tube" $ li ! class_ "yTube" $ mempty
                                            a ! href "javascript:void(0);" ! A.title "Instagram" ! class_ "socialPopUp" ! A.id "socialInsta" $ li ! class_ "instagram" $ mempty
                                    H.div ! class_ "three columns" $ mempty
                                    H.div ! class_ "twelve columns footCopy" $ do
                                        p ! class_ "pullLeft" $ do
                                            "Copyright ©"
                                            H.span ! A.id "year" $ "2017"
                                            a ! href "http://www.infinitejourneys.in/infinite-journeys/" $ H.span ! class_ "orange" ! A.title "Infinite Journeys" $ "Infinite Journeys."
                                            "&"
                                            a ! href "http://www.infinitejourneys.in/foliage-outdoors/" $ H.span ! class_ "green" ! A.title "Foliage Outdoors" $ "Foliage Outdoors."
                                            "All Rights Reserved."
                                            a ! href "http://www.infinitejourneys.in/terms-and-conditions/" $ H.span ! A.style "color:#666666; margin-left: 10px;" ! A.title "Terms and Conditions" $ "Terms and Conditions"
                                        p ! class_ "pullRight" $ do
                                            "Powered By :"
                                            a ! href "http://www.gobiggi.com/" ! target "_blank" ! class_ "green" ! A.title "Gobiggi LLC." $ "Gobiggi LLC."
                    a ! href "javascript:void(0);" ! class_ "scrollup" $ "Scroll"
                H.div ! class_ "bar" $ mempty
                H.div ! A.id "payUpolicy" ! class_ "simplePopup" $ H.div ! class_ "rulesContent" $ do
                    h4 "TERMS OF USE"
                    p "The website www.infinitejourneys.in is owned by Infinite Journeys Pvt. Ltd..\n            All bookings here are made with Rnfinite Journeys Pvt. Ltd and the booking terms mentioned herein\n            below constitutes the entire agreement between the customer and Company. By making a booking\n            with us and/or depositing payments with us for tour and travel services you confirm having carefully\n            read, understood and accepted the below mentioned ‘Terms of Services’."
                    h5 $ strong "1. BOOKINGS"
                    p "Visitors on our website are kindly requested to fill the Enquiry Form with all necessary fields\n            mentioned there and submit the same to be sent to our office. Upon receipt of the booking request or\n            travel enquiry a travel expert from our office will get in touch with you with the best available\n            information and offers for the desired tour package or travel services. In the event the travel\n            requirements are not clear in the booking form submitted by you to us, our team may contact you via\n            email or phone no. provided by you in the booking form. No booking is considered as ‘confirmed’\n            unless a tour confirmation letter is sent by us to the customer after receiving the initial advance\n            payments in our account."
                    h5 $ strong "2. PAYMENTS"
                    h6 ! A.style "margin-top: 20px;" $ strong "I). Deposit"
                    p "Our tours are subject to availability. To make reservation for a tour with us, the customer requires\n        depositing advance payments as may be conveyed by our travel consultant during the course of\n        correspondence. No booking is treated ‘confirmed’ unless a confirmation letter is received by the\n        traveller from our office after depositing the advance payments for the trip."
                    h6 $ strong "II). Balance Payments"
                    p "It is the sole responsibility of the customer to make the balance payments at least 90 days prior to\n        the start of the tour or as may be agreed / conveyed by our travel consultant during the course of\n        correspondence. In the event of non-receipt of balance payment by the cut-off date, the Company\n        will retain the right to treat the tour bookings as cancelled and the advance payment may be\n        forfeited."
                    h6 $ strong "III). How to pay for your travel bookings"
                    p "To reserve tour package or travel services with us upon demand from our office our customers may\n        deposit the payments in our Yes Bank Ltd. account under intimation to our office. The bank account\n        information may be received from our office via email or phone. Our customers may also avail the\n        benefits of paying by their credit cards (Visa or MasterCard) using our ‘Secure Online Payment\n        Gateway’. For more information on security of your private information please read our ‘Privacy\n        Policy’."
                    h6 $ strong "A) Swift Bank Payments"
                    p "Our customers may send the payments to us using our SWIFT bank account information. This is the\n        responsibility of the sender to provide us with a copy of the telegraphic transfer report (Bank\n        document) for necessary check and follow ups with our local bank in India. While paying the\n        deposits via SWIFT for the tour bookings kindly ensure that you have filled all correct information in\n        the payment form and have also paid the intermediary bank fee which is normally US$35 approx for\n        each payment. We will only credit in your tour account the amount which we receive in our bank and\n        we take no responsibility of intermediary bank fee/charges."
                    h6 $ strong "B) NEFT/RTGS"
                    p "The customers may also pay through NEFT/RTGS for the bookings made with us. Please forward us\n        a copy of the NEFT/RTGS payment advice made by you. Upon receipt of the payments in the bank,\n        our travel consultant will confirm the same to you via phone or email."
                    h6 $ strong "C) Cheque / Bankers Cheque"
                    p "The customer residing in India may deposit a local cheque / draft in our bank account (please ask for\n        the bank details from our office). A copy of deposit slip duly stamped by the bank may kindly be sent\n        to our office for our records. The receipt of the payment slip will not be considered as ‘receipt’ of the\n        payment. The payment will be considered as ‘received’ only once the same has arrived and settled\n        in our bank account. The booking confirmation process will effect accordingly therefore the\n        customers are advised to deposit the cheque payments well in advance to avoid inconvenience."
                    h6 $ strong "D) Cash payments"
                    p "Our customers residing in India can also deposit advance payments in ‘cash’ in our bank account. A\n        copy of the payment deposit slip may kindly be sent to our office for their follow up and records. Our\n        office issues a ‘Cash Receipt’ against all cash payments received by us and it is the responsibility\n        and right of the customer to ask for a ‘customer copy’ of such receipt after the payment is settled in\n        our account."
                    h6 $ strong "E) Credit Card Payments"
                    p "Our worldwide customers can avail the benefits of our ‘100% secure’ online credit card payment\n        gateway (Visa and MasterCard) managed by Pay u. We accept payments in US$, GBP, Euro, YEN,\n        INR and other renowned international currencies. It is advisable and requested to our customers\n        residing outside India to make the payments in US$, GBP, Euro, YEN or their local currency (if listed\n        in our payment gateway). Please note that the online payments attract online bank fee/charges of\n        3% (it may vary case to case) and the same is payable by the credit card holder in addition to the\n        tour payments while making the transaction. For certain credit card payments, on the instruction of\n        the bank to ensure genuine card entry our office may ask the credit card holder to fill and sign the\n        ‘Credit Card Payment Authorisation Form’ and send the same to our office along with the identity\n        proof (passport copies etc) and/or front copy of the credit card. It is mandatory for the customer to\n        provide us with such details / document if demanded by our office. Credit card security code\n        (CVV/CV2 no. mentioned on the ‘back’ of the card) is case sensitive and not to be shared by the\n        card holder or filled in the authorisation form or written in email etc."
                    h6 $ strong "F) Invoice and Taxes"
                    p "A service invoice is issued for all tour bookings which are usually inclusive of all applicable taxes\n        except the Govt of India Service Tax. It is not only the liability of the Company to charge Service Tax\n        to the customer but also the responsibility of the customer to pay the same without fail. All our\n        quotes and offers are ‘exclusive’ of GST until specified in the quote unless."
                    h6 $ strong "G) Money Exchange rates"
                    p "The customers may refer to the Reserve Bank of India website www.rbi.org.in to check the current\n        exchange rate of major foreign currencies to INDIAN Rupees"
                    h6 $ strong "H) Late Bookings"
                    p "We may need full or higher percentage of amount for ‘Late Bookings’. Kindly ask our travel\n        consultant at the time of making bookings with us. The payments received for such bookings are\n        ‘non-refundable’."
                    h5 $ strong "3. TRAVELLER’S INFORMATION"
                    p ! A.style "margin-top: 20px;" $ "To make reservation and also for our file records our travel consultant retains the right to ask you for providing him/her with the copy of passport, personal details such as name, date of birth, gender, address, phone no., email etc., the customer is kindly requested to provide the same if and when asked."
                    h5 $ strong "4. WHAT IS INCLUDED IN PRICE"
                    p ! A.style "margin-top: 20px;" $ "Most ‘tour packages’ offered by Round the World Vacations are inclusive of accommodation in\n        hotel/guest house/resorts, transportation in a private car (for private trips) or in a coach/bus (for\n        group tours), breakfast, services of local tour guides (where available) for visiting historic sites and\n        basic entertainments for the trip. The same may vary on case to case basis and is conveyed to the\n        customer by our travel consultants during the course of correspondence."
                    h6 $ strong "I) Accommodation"
                    p "Our ‘independent tours’ includes accommodation in handpicked hotels selected by us based on the\n        market report and/or recommendation of our past travellers. Based on the demand of the customer\n        and type of requirements or budget mentioned by them, our travel consultants ensure to provide a\n        comfortable and clean hotel for stay (for independent trip) during the trip. Also for our guaranteed\n        departure ‘India group tours’ we have a select list of handpicked hotels and guest houses which may\n        also be changed if situation demands. In the event of non-availability of hotel/s listed by us in our\n        offer, our team retains the right to reserve another similar standard hotel for the travellers. All our\n        hotels are subject to availability. We request the travellers to check on the internet about the\n        standard of the hotels offered by us, before making the deposit for the trip."
                    h6 $ strong "II) Vehicles and drivers"
                    p "We provide comfortable vehicle (bus/coach/car/jeep) in good condition with customer friendly\n        English speaking drivers (basic knowledge of English). Some of our tourist drivers are highly\n        recommended by the travellers and they are serving to international itinerants for many years now."
                    h6 $ strong "III) Tour Guides/Escorts"
                    p "Most trips are inclusive of assisted airport/railway station transfers. For sightseeing trips, we use only\n        Govt of India licensed ‘Tourist Guides/Escorts’. Most of our tour packages are inclusive of services\n        of local English speaking tour guides at historic sites. Other than English we also have tourist guides\n        who are expert in more international languages such as German, Spanish, Italian, Russian,\n        Japanese, Turkish, Farsi, Chinese etc."
                    h6 $ strong "IV) Meals"
                    p "Most trips are inclusive of hotel breakfasts. Some trips also include special lunches and theme\n        dinners etc. in the hotel of stay or outside in a city restaurants. Some of the tours are even inclusive\n        of all meals (jungle lodges and camps mainly) which is mentioned in the list of inclusions and/or will\n        be conveyed during the course of correspondence."
                    h6 $ strong "V) Others"
                    p "Many of our tour packages also includes basic entertainments and activities such as traditional\n        rickshaw rides, decorated Elephant ride, Camel ride, Boat tickets, cultural events etc. Please check\n        with our travel consultant about this while making reservation with us. A list of some important ‘not to\n        be missed’ visits /rides etc can be viewed in ‘Unique Travel Experience’ section and can be included\n        in the trip on demand, at an additional cost."
                    h5 $ strong "5. NOT INCLUDED"
                    p ! A.style "margin-top: 20px;" $ "Usually our tour packages does not include international air ticket price, domestic flight tickets, travel insurance, visa (please check updates on India’s new VOA - Visa on Arrival policy), tips, camera/video camera fee at monuments and museums etc, personal expenses such as drinks/laundry/telephone/mini bar bills etc and the same are payable by the travellers in addition to the package price. Our services also does not include any additional expense incurred due to any\n        unforeseen circumstances or situation such as riots, strikes, political closure, natural hazard, technical failure, flight or train cancelation and delay etc or any other reason/situation beyond our control."
                    h5 $ strong "6. FLUID PRICING"
                    p ! A.style "margin-top: 20px;" $ "As per the common practice of the trade Round The World Vacations operates tours on fluid price\n        basis. The offers are subject to the limitations imposed by hotels, airlines and other service providers and the same may change without prior notice in case of hike in the air ticket price, tax structure, major fluctuation in currency exchange rate or any other reason. Round the World Vacations retains the right to change its price and offers without prior notice, if the case occurs. It may also cause different price charged to different clients travelling in the same group/period. It is totally at the\n        discretion of the Company to decide upon the same."
                    h5 $ strong "7. TRAVEL DOCUMENTS"
                    p ! A.style "margin-top: 20px;" $ "Once you have booked and paid for the tour our operation team will issue and provide you with a\n        copy of travel documents for your trip. You are kindly requested to check the details mentioned in the travel documents and in case of any error found the same may please be reported to the our concerned travel consultant for further corrections. The original travel documents shall be sent to the traveller at the port of his/her arrival in India. The travel document kit also carries a Feedback Form with an envelope which may please be filled by the traveller and sent to our senior management for their reference and our office records."
                    h5 $ strong "8. HOTEL CHECK IN/OUT POLICY"
                    p ! A.style "margin-top: 20px;" $ "In India most hotels now offer 12.00 hrs check out and 14.00 hrs check in system. All our trips are\n        based on the same policy of the hotels and the travellers are requested to adhere with the same.\n        Any early check-in or late check-out is absolutely at the discretion of the hotel management and\n        based on the availability of rooms at the specific day and time. We neither guarantee nor do we\n        accept the liability of providing early check-in or late check-out without additional charges. Our travel\n        consultant may only request the hotel to extend this gesture to the customer and as stated the same\n        will be the decision of the hotel only. For any early check-in or late check-out facility the travellers\n        may kindly write to our office."
                    h5 $ strong "9. AMENDMENT OR EXTENSION IN TRIP/STAY"
                    p ! A.style "margin-top: 20px;" $ "If there is any amendment requested by the customer after finalizing the trip/travel bookings with our\n        office, the same may be subject to availability. For any amendment the customers are requested to\n        immediately contact our head office and share the details of amendments with respective travel\n        consultant in writing. Our team will try its best to make the desired amendments in the trip, but we\n        neither guarantee nor do we take the liability of confirmation / availability of the travel arrangements\n        as per the new date or schedule announced by the customer. Any additional expense incurred due\n        to the amendment shall be payable only by the customer."
                    h5 $ strong "10. CHANGE IN THE PRICE OF THE TRIP"
                    p ! A.style "margin-top: 20px;" $ "All our tours are subject to availability and our price/deals are subject to change without prior notice. We retain the right to cancel/amend or withdraw any price/deal/offer without assigning prior notice.\n        Our ‘India Group Tours’ are based on minimum participants on each trip. In the event of non\n        fulfilment of minimum participants for the group, we shall guarantee the trip with minimum possible\n        supplement cost which will be announced to the traveller before the commencement of the trip."
                    h5 $ strong "11. EXCLUSION FROM THE TOUR"
                    p ! A.style "margin-top: 20px;" $ "At any given time if the client engage himself/herself/themselves in illegal or undesirable behaviour,\n        do not comply with the reasonable instructions and policy of our trip and services or if he/she/they\n        jeopardise the safety of other clients, guides, drivers etc. they may be excluded from the trip\n        immediately at our discretion and will be entitled for possible refund of the unutilised services,\n        subject to the policy and decision of airline, hotels etc. The refund will not be immediate but will be\n        done as per the policy of the Company through reliable banking channels only."
                    h5 $ strong "12. UNUTILIZED SERVICES"
                    p ! A.style "margin-top: 20px;" $ "Round the World Vacations, its staff, management, partners or representative do not bear the\n        responsibility or liability of making refund for any unutilised service/s. It is to be noted seriously that\n        after the start of the trip no refund is possible for whatsoever reason. In the event of agreement by\n        any airline, hotel etc for refund against any unutilised part of the service or item etc Round the World\n        Vacations shall take up the matter on the behalf of the customer and shall only offer its assistance to\n        the customer in receiving the same from the other party. Such refunds shall be sent only to the bank\n        account of the customer within 2-3 weeks after receiving the same from service provider/s."
                    h5 $ strong "13. SPECIAL SCHEMES, DISCOUNTS AND OFFERS"
                    p ! A.style "margin-top: 20px;" $ "None of the two (or more) schemes/ offers / deals (including loyalty discount, last minute discount,\n        early bird discount etc) can be clubbed with each other or any other offer. All such schemes and\n        offers introduced by us are only promotional offers and the terms of the scheme/s can be changed\n        anytime thereafter without assigning any notice. We also retain the right to withdraw or modify the\n        offers/scheme anytime without notice. It is totally at our discretion to confirm or reject your booking\n        under such schemes. These offers and schemes are not applicable for travel during New year or\n        Christmas period, peak tourist season dates, festival dates, luxury train bookings etc. No discount or\n        offer will be applicable for the trips already booked with us under a normal price. The discounts does\n        not apply to air fares, train bookings, luxury train travels, permits, visa, travel insurance,\n        monument/museum tickets, extra meals and/or pre/post tour arrangements. It applies to the\n        bonafide customer only and not to other traveller on the same trip (unless they also hold the discount\n        ticket). While making the query with us, you clearly need to mention the details of our special offer\n        under which you wish to book the trip. Services and bookings for all schemes and offers are subject\n        to availability only."
                    h4 "CANCELLATION AND REFUND"
                    p "All cancellations must be intimated to our head office on phone followed by a written confirmation via\n        email or fax. Telephonic cancellation will not be accepted as ‘cancelation request’. Cancellations for the\n        independent/individual tour services should be made with a notice of not less than 7-30 days (According\n        to Situation). The cancellation in case of group booking should be made at least 30 days prior to the date\n        of commencement of the trip. For Christmas, New Year, Diwali, Pushkar Fair and other important festivals\n        the normal cancelation policy does not apply and payments for against bookings during such busy period\n        are considered as non-refundable. Please check with our travel consultants at the time of booking for\n        such cancelation policy for special event tours."
                    h5 "Please view the information on cancelation policy and cancellation fee as below:"
                    h5 "In the event of less than 8 travellers:"
                    p "I) If the booking is cancelled 10 days prior to the start of the trip Loss of deposit will be full."
                    p "II)  If the booking is cancelled 20 days prior to the start of the trip 50% Loss of deposit"
                    p "III) If the booking is cancelled 30 days prior to the start of the trip 70% Amount will refund"
                    p "IV) If the booking is cancelled within 0 days prior to the start of the trip 100% Amount will refund"
                    h5 "In the event of more than 8 travellers:"
                    p "I) If the booking is cancelled 10 days prior to the start of the trip Loss of deposit will be full."
                    p "II) If the booking is cancelled 20 days prior to the start of the trip 50% Loss of deposit"
                    p "III) If the booking is cancelled 30 days prior to the start of the trip 70% Amount will refund"
                    p "IV) If the booking is cancelled within 0 days prior to the start of the trip 100% Amount will refund"
                    h5 "Please Note:"
                    p "I) Amount will be refunded through Electronic Transfer or by the card (Debit/Credit)."
                    p "II) Refund of amount will initiate after deducting the applicable cancellation Charges and service charge\n        and both will be settled within 7 to 30 days of the day of cancellation request approved by Round The\n        World Vacation."
                    p "III) Booking which is under no Cancellation/ No Refund, guest/client travelling or person/entity booked will\n        have to pay the service charge to Round The World Vacations."
                    h4 "PRIVACY POLICY"
                    p $ do
                        "For us privacy for our valued customer is very important. We strongly believe that the personal\n        information of our customers should not be shared with the third party without the prior consent or\n        request from the customer. Privacy is the right of an individual and at nfinite Journeys Pvt. Ltd he\n        information of the customer such as contact no., email, addresses etc is used only for the internal\n        purpose and not for sale."
                        br
                        "Your contact information is stored in our database and is only used to contact you during the course\n        of your travel with us for sharing the status of your travel bookings with us and then after for\n        announcement of our latest deals and news etc. We at Round the World Holidays condemn the\n        unauthorised reach and misuse and/or discloser of the personal information of the customer and we\n        have strict guidelines and high security features to prevent the same."
                        br
                        "Any changes in our ‘Privacy Policy’ will be posted here on the website. Should the customer require\n        any further information on our ‘Privacy Policy’ please send us an email at"
                        a ! href "mailto:info@foliageoutdoors.com" $ "info@foliageoutdoors.com"
                        "with ‘Privacy Policy’ written in the subject field. We will ensure reply to the reasonable queries at our earliest possible time."
                    h5 "DATA SECURITY INFORMATION"
                    p "We have extensive firewall and high end security system to monitor the traffic and financial\n        transaction on our website/s. Any suspicious email, traffic on website and/or financial transaction will\n        be investigated to ensure there is no breach of policy and security. Our customer care executive or\n        other staff may contact you to verify the transaction made by you. The secure connection between\n        your browser and our system for financial transactions uses 128 bit Secure Sockets Layer (SSL)\n        encryption. This is a well-respected technology developed by Netscape, Microsoft and RSA Inc that\n        is supported by most browsers."
                    h5 "SECURE ONLINE PAYMENTS"
                    p "The visitor on our website please take a note that your name, email address and other personal\n        information submitted on our website may be stored with us and may also appear on the website.\n        Like other platforms our server log files also receives general information such as IP address of the\n        visitor, cookie etc. For the financial transactions by credit card nfinite Journeys Pvt. Ltd uses a 3rd\n        party secure payment gateway provided by “Pay u” and the credit card details are ‘not stored’ with\n        Round the World Holidays, instead the information is securely stored and encrypted with\n        Visa/MasterCard. The ‘online credit card payment gateway’ provided by us for our customers is fully\n        PCI-DSS compliant and to transfer information between Round the World Holidays and credit card\n        bank we use a 128bit SSL certificate powered by Dialect . It simply means that when the customer\n        makes the transaction using our online payment gateway on our website, these details are being\n        securely stored within Dialect’s fully secure vaults to ensure your information cannot be used by\n        malicious 3rd parties. Round the World Holidays and/or its employees cannot view the credit card’s"
                    h5 "CHILDREN"
                    p "We do not suggest and allow person/s below 18 year of age to become a member of our website\n        and other websites/social sites etc. By entering to our websites and using our services you confirm\n        and warrant that you are 18 or older."
                    h5 "NO GUARANTEES"
                    p $ do
                        "Round the World Holidays India Pvt. Ltd. will make all possible efforts to meet with the policies\n        mentioned herein on the website, but we are not in a position to guarantee these standards as there\n        may be factors beyond our control. As a consequence, we disclaim any warranties or\n        representations relating to maintenance or nondisclosure of Data."
                        br
                        br
                        "Our ‘Privacy Policy’ does not cover or apply to the other entities that are not under our control or\n        owned by us and/or person/s that are not our employees within our control."
                H.div ! class_ "overlay-bgSocial" $ do
                    H.div ! class_ "popUpLoaderText" ! A.style "text-align:center;padding:25%;color:#A0A0A0;" $ img ! src "./foliage_files/foliage-loader.gif" ! alt "Loader" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/foliage-loader.gif"
                    H.div ! class_ "overlayPopupSocial" ! A.style "padding-bottom:0px;" $ do
                        H.div ! class_ "formBox demo1 formTextarea" $ do
                            H.div ! A.id "socialBoxBoxDiv" $ do
                                H.div ! class_ "fbPopBx popNewBx" ! A.style "float: left;width: 100%;" $ do
                                    a ! href "https://www.facebook.com/InfiniteJourneysIndia" $ img ! src "./foliage_files/Infinite_journeys_logo_new.png" ! class_ "popNewInj fbijLnk lazy" ! alt "Infinite Journeys Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/Infinite_journeys_logo_new.png"
                                    a ! href "https://www.facebook.com/Foliagers" ! target "_blank" $ img ! src "./foliage_files/foliage_outdoors_logo_new.png" ! class_ "fbfoLnk  lazy" ! alt "Foliage Outdoors Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/foliage_outdoors_logo_new.png"
                                    H.div ! class_ "fb-icon" ! A.style "margin-top: 15px;" $ do
                                        a ! href "https://www.facebook.com/InfiniteJourneysIndia" ! target "_blank" ! class_ "fbijLnk" $ do
                                            i ! class_ "fa  pop-up-fb" $ mempty
                                            H.span ! A.style "padding-top:10px;font-size:15px;color:#006599" $ "CLICK HERE"
                                        a ! href "https://www.facebook.com/Foliagers" ! target "_blank" ! class_ "fbfoLnk" $ do
                                            i ! class_ "fa  pop-up-fb" $ mempty
                                            H.span ! A.style "padding-top:10px;font-size:15px;color:#006599" $ "CLICK HERE"
                                H.div ! class_ "twPopBx popNewBx" ! A.style "float: left;width: 100%;" $ do
                                    a ! href "javascript:void(0);" $ img ! src "./foliage_files/Infinite_journeys_logo_new.png" ! class_ "popNewInj lazy" ! alt "Infinite Journeys Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/Infinite_journeys_logo_new.png"
                                    a ! href "https://twitter.com/foliageoutdoors" $ img ! src "./foliage_files/foliage_outdoors_logo_new.png" ! alt "Foliage Outdoors Logo" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/foliage_outdoors_logo_new.png"
                                H.div ! class_ "gplusPopBx popNewBx" $ do
                                    a ! href "javascript:void(0);" ! A.style "display: inline-block;" $ img ! src "./foliage_files/Infinite_journeys_logo_new.png" ! class_ "popNewInj lazy" ! alt "Infinite Journeys Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/Infinite_journeys_logo_new.png"
                                    a ! href "https://plus.google.com/+foliageoutdoors/about" ! target "_blank" ! A.style "display: inline-block;" $ img ! src "./foliage_files/foliage_outdoors_logo_new.png" ! alt "Foliage Outdoors Logo" ! class_ "lazy" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/foliage_outdoors_logo_new.png"
                                H.div ! class_ "instaPopBx popNewBx" ! A.style "float: left;width: 100%;" $ do
                                    a ! href "https://www.instagram.com/infinite.journeys" ! target "_blank" $ img ! src "./foliage_files/Infinite_journeys_logo_new.png" ! class_ "popNewInj instIjLnk lazy" ! alt "Infinite Journeys Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/Infinite_journeys_logo_new.png"
                                    a ! href "https://www.instagram.com/foliageoutdoors" ! target "_blank" $ img ! src "./foliage_files/foliage_outdoors_logo_new.png" ! class_ "instFoLnk lazy" ! alt "Foliage Outdoors Logo" ! dataAttribute "original" "http://www.infinitejourneys.in/templates/default/images/layout/foliage_outdoors_logo_new.png"
                                    H.div ! class_ "fb-icon" ! A.style "margin-top: 15px;" $ do
                                        a ! href "https://www.instagram.com/infinite.journeys" ! target "_blank" ! class_ "instIjLnk" $ do
                                            i ! class_ "fa fa-instagram pop-up-insta" $ mempty
                                            H.span ! A.style "font-size:15px;color:#333" $ "CLICK HERE"
                                        a ! href "https://www.instagram.com/foliageoutdoors" ! target "_blank" ! class_ "instFoLnk" $ do
                                            i ! class_ "fa fa-instagram pop-up-insta" $ mempty
                                            H.span ! A.style "font-size:15px;color:#333" $ "CLICK HERE"
                            button ! class_ "close-btn" $ "x"
                        H.div ! class_ "clear" $ mempty
            script "(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  //js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=773675282720750&version=v2.0\";\n  js.src = \"//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7\";\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, 'script', 'facebook-jssdk'));"
            --  Facebook Pixel Code 
            script "!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\nn.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\ndocument,'script','https://connect.facebook.net/en_US/fbevents.js');\n\nfbq('init', '1565756943734145');\nfbq('track', \"PageView\");\n\n// ViewContent\n// Track key page views (ex: product page, landing page or article)\nfbq('track', 'ViewContent');\n\n\n// Search\n// Track searches on your website (ex. product searches)\nfbq('track', 'Search');\n\n\n// AddToCart\n// Track when items are added to a shopping cart (ex. click/landing page on Add to Cart button)\nfbq('track', 'AddToCart');\n\n\n// AddToWishlist\n// Track when items are added to a wishlist (ex. click/landing page on Add to Wishlist button)\nfbq('track', 'AddToWishlist');\n\n\n// InitiateCheckout\n// Track when people enter the checkout flow (ex. click/landing page on checkout button)\nfbq('track', 'InitiateCheckout');\n\n\n// AddPaymentInfo\n// Track when payment information is added in the checkout flow (ex. click/landing page on billing info)\nfbq('track', 'AddPaymentInfo');\n\n\n// Purchase\n// Track purchases or checkout flow completions (ex. landing on \"Thank You\" or confirmation page)\nfbq('track', 'Purchase', {value: '1.00', currency: 'USD'});\n\n\n// Lead\n// Track when a user expresses interest in your offering (ex. form submission, sign up for trial, landing on pricing page)\nfbq('track', 'Lead');\n\n\n// CompleteRegistration\n// Track when a registration form is completed (ex. complete subscription, sign up for a service)\nfbq('track', 'CompleteRegistration');\n\n\n// Other\n// \nfbq('track', 'Other');"
            noscript "<img height=\"1\" width=\"1\" style=\"display:none\"\nsrc=\"https://www.facebook.com/tr?id=1565756943734145&ev=PageView&noscript=1\"\n/>"
            --  End Facebook Pixel Code 
            script "(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');\n\n  ga('create', 'UA-54361594-1', 'auto');\n  ga('send', 'pageview');"
            --  Preloader 
            H.style ! type_ "text/css" $ ".rulesContent p{\n        padding: 10px;\n    }"
            script ! type_ "text/javascript" ! src "./foliage_files/jquery.simplePopup.js" $ mempty
            link ! rel "stylesheet" ! type_ "text/css" ! href "./foliage_files/popupstyle.css"
            script ! type_ "text/javascript" $ "$(document).ready(function(){\n   $('.payUpolicy').click(function(){\n     $('#payUpolicy').simplePopup({\n        centerPopup: true,\n     });\n   });\n});"
            H.style ! type_ "text/css" $ ".popNewBx{\n        float: none;\n        width: 100%;\n        display: block;\n        text-align: center;\n        vertical-align: middle;\n        position: relative;\n        margin-top: 10%;\n        height: 100%;\n    }\n    .popNewInj{\n        border-right: 1px solid #ccc;\n        width: inherit;\n        padding: 0 15px;\n        margin: 0 15px 0 0;\n    }\n    .fb-icon a {\n        color:#E35E12;\n        font-size: 15px;\n        font-weight: 600;\n        margin: 13px 20px;\n        display: inline-block;\n    }\n    .fb-icon a i{\n        /*background-color: #E35E12;*/\n        /*background-position: 40px 41px;*/\n        /*background: url('http://www.infinitejourneys.in/templates/default/images/layout/socialNetwok.png');*/\n        /*color: #ffffff;*/\n        border-radius: 100%;\n        padding: 10px 13px;\n        font-size: 17px;\n        margin-right: 5px;\n    }\n\n    .fa-instagram{\n     width: 40px;\n    height: 40px;\n    background: #999;\n    float: left;\n    margin: 0 10px 0 0;\n    background: url('http://www.infinitejourneys.in/templates/default/images/layout/socialNetwok.png') 0 0;\n    }\n    .fa-instagram:before {\n    content: none!important;\n    }\n    .fa-facebook:before {\n    content: none!important;\n    }\n    .pop-up-fb{\n            width: 40px;\n    height: 40px;\n    background: #999;\n    float: left;\n    margin: 0 10px 0 0;\n    background: url('http://www.infinitejourneys.in/templates/default/images/layout/socialNetwok.png') 0 0;\n    background-position: 0 0px;\n    padding: 0px 0px!important;\n    margin-top: -10px;\n    }\n    .pop-up-insta{\n        width: 40px!important;\n     height: 40px!important;\n     background-position: 40px 0!important;\n     background: url('http://www.infinitejourneys.in/templates/default/images/layout/socialNetwok.png')!important 0 0;\n     margin: 0 10px 0 0;\n    padding: 0px 0px!important;\n        margin-top: -10px;\n    }"
            link ! rel "stylesheet" ! href "./foliage_files/font-awesome.min.css"
            script ! type_ "text/javascript" $ "//Facebook\n    $('.fbijLnk').click(function() {\n        window.open(\"https://www.facebook.com/InfiniteJourneysIndia\", \"_blank\");\n    });\n\n    $('.fbfoLnk').click(function() {\n        window.open(\"https://www.facebook.com/Foliagers\", \"_blank\");\n    });\n\n    //Instagram\n    $('.instIjLnk').click(function() {\n        window.open(\"https://www.instagram.com/infinite.journeys\", \"_blank\");\n    });\n\n    $('.instFoLnk').click(function() {\n        window.open(\"https://www.instagram.com/foliageoutdoors\", \"_blank\");\n    });"
            --  Google Code for Remarketing Tag 
            --  Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. See more information and instructions on how to setup the tag on: http://google.com/ads/remarketingsetup 
            script ! type_ "text/javascript" $ "/* <![CDATA[ */\nvar google_conversion_id = 874842349;\nvar google_custom_params = window.google_tag_params;\nvar google_remarketing_only = true;\n/* ]]> */"
            script ! type_ "text/javascript" ! src "./foliage_files/conversion.js" $ mempty
            iframe ! name "google_conversion_frame" ! A.title "Google conversion frame" ! width "300" ! height "13" ! src "./foliage_files/saved_resource.html" $ mempty
            noscript "<div style=\"display:inline;\">\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//googleads.g.doubleclick.net/pagead/viewthroughconversion/874842349/?value=0&amp;guid=ON&amp;script=0\"/>\n</div>"
            script "var timeInt = setInterval(function(){\nif(jQuery('#successContactUsMsg').is(':visible'))\n{\n(new Image()).src=\"//www.googleadservices.com/pagead/conversion/1023196461/?label=8BJ-CKCo6GQQrfry5wM&guid=ON&script=0\";\nclearInterval(timeInt);\n}\n},1000)"
            script ! type_ "text/javascript" $ "<!--Start of Tawk.to Script-->\nvar $_Tawk_AccountKey='53e315938a6482154c000603',$_Tawk_API={},$_Tawk_LoadStart=new Date();(function(){var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];s1.async=true;s1.src='https://embed.tawk.to/53e315938a6482154c000603/default';s1.charset='UTF-8';s1.setAttribute('crossorigin','*');s0.parentNode.insertBefore(s1,s0);})();"
            --  Review plugin js 
            script ! type_ "text/javascript" ! src "./foliage_files/review.js" ! dataAttribute "review-link" "infinite-journeys-and-foliage-outdoors" ! dataAttribute "review-theme" "badge-style-04" ! dataAttribute "attr-id" "2582" $ mempty
            --  Review plugin js ends here 
            H.div ! A.id "mm-blocker" ! A.style "opacity: 0;" $ mempty
            H.div ! A.id "DpT4bsm-1501150424081" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: auto !important; position: fixed !important; border: 0px !important; min-height: 0px !important; min-width: 0px !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: auto !important; height: auto !important; z-index: 2000000000 !important; cursor: auto !important; float: none !important; bottom: 0px !important; right: 0px !important; left: auto !important; display: block;" $ do
                iframe ! A.id "OIxfAT3-1501150424082" ! src "./foliage_files/saved_resource(1).html" ! A.title "chat widget" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: auto !important; right: auto !important; bottom: auto !important; left: auto !important; position: static !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 320px !important; height: 400px !important; z-index: 999999 !important; cursor: auto !important; float: none !important; display: none !important;" $ mempty
                iframe ! A.id "bHMTRwB-1501150424083" ! src "./foliage_files/saved_resource(2).html" ! A.title "chat widget" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; position: fixed !important; border: 0px !important; padding: 0px !important; transition-property: none !important; z-index: 1000001 !important; cursor: auto !important; float: none !important; height: 40px !important; min-height: 40px !important; max-height: 40px !important; width: 320px !important; min-width: 320px !important; max-width: 320px !important; transform: rotate(0deg) translateZ(0px) !important; transform-origin: 0px center 0px !important; margin: 0px !important; top: auto !important; bottom: 0px !important; right: 10px !important; left: auto !important; display: block !important;" $ mempty
                iframe ! A.id "B1UhEmJ-1501150424084" ! src "./foliage_files/saved_resource(3).html" ! A.title "chat widget" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; position: fixed !important; border: 0px !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; display: none !important; z-index: 1000003 !important; cursor: auto !important; float: none !important; top: auto !important; bottom: 40px !important; right: 10px !important; left: auto !important; width: 320px !important; max-width: 320px !important; min-width: 320px !important; height: 37px !important; max-height: 37px !important; min-height: 37px !important;" $ mempty
                H.div ! A.id "B0KuUxi-1501150424081" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none rgb(255, 255, 255) !important; opacity: 0 !important; top: 1px !important; bottom: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: auto !important; height: 45px !important; display: block !important; z-index: 999997 !important; cursor: move !important; float: none !important; left: 0px !important; right: 96px !important;" $ mempty
                H.div ! A.id "oAkbBVt-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: 96px !important; bottom: auto !important; left: 0px !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 6px !important; height: 100% !important; display: block !important; z-index: 999998 !important; cursor: w-resize !important; float: none !important;" $ mempty
                H.div ! A.id "UZSopmz-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: 0px !important; bottom: auto !important; left: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 6px !important; height: 100% !important; display: block !important; z-index: 999998 !important; cursor: e-resize !important; float: none !important;" $ mempty
                H.div ! A.id "y8uZPSS-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: 0px !important; bottom: auto !important; left: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 100% !important; height: 6px !important; display: block !important; z-index: 999998 !important; cursor: n-resize !important; float: none !important;" $ mempty
                H.div ! A.id "BMhVGy3-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: auto !important; right: 0px !important; bottom: 0px !important; left: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 100% !important; height: 6px !important; display: block !important; z-index: 999998 !important; cursor: s-resize !important; float: none !important;" $ mempty
                H.div ! A.id "aLnsBpf-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: auto !important; bottom: auto !important; left: 0px !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 12px !important; height: 12px !important; display: block !important; z-index: 999998 !important; cursor: nw-resize !important; float: none !important;" $ mempty
                H.div ! A.id "eVYHqhP-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: 0px !important; bottom: auto !important; left: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 12px !important; height: 12px !important; display: block !important; z-index: 999998 !important; cursor: ne-resize !important; float: none !important;" $ mempty
                H.div ! A.id "PBUZgkz-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: auto !important; right: auto !important; bottom: 0px !important; left: 0px !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 12px !important; height: 12px !important; display: block !important; z-index: 999998 !important; cursor: sw-resize !important; float: none !important;" $ mempty
                H.div ! A.id "v0QPCXm-1501150424082" ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: auto !important; right: 0px !important; bottom: 0px !important; left: auto !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 12px !important; height: 12px !important; display: block !important; z-index: 999999 !important; cursor: se-resize !important; float: none !important;" $ mempty
                H.div ! class_ "" ! A.style "outline: none !important; visibility: visible !important; resize: none !important; box-shadow: none !important; overflow: visible !important; background: none transparent !important; opacity: 1 !important; top: 0px !important; right: auto !important; bottom: auto !important; left: 0px !important; position: absolute !important; border: 0px !important; min-height: auto !important; min-width: auto !important; max-height: none !important; max-width: none !important; padding: 0px !important; margin: 0px !important; transition-property: none !important; transform: none !important; width: 100% !important; height: 100% !important; display: none !important; z-index: 1000001 !important; cursor: move !important; float: left !important;" $ mempty
            H.div ! class_ "review-widget" ! itemscope "" ! itemtype "http://schema.org/LocalBusiness" $ do
                H.div ! class_ "review-button" ! A.id "review-button" $ H.div ! class_ "badge-style-04" ! A.style "margin-top: 327px;" $ H.div ! class_ "logo-rating" $ do
                    H.div ! class_ "review-count-star" $ do
                        H.div ! class_ "rating" $ "4.6"
                        H.div ! class_ "star-img" $ img ! src "./foliage_files/review-white-star.png" ! alt "Gobiggi Review"
                    a ! href "javascript:void(0);" ! class_ "review-text" ! A.id "review-click" $ "See Reviews"
                H.div ! class_ "review-show-panel" ! A.id "review-show-panel" $ do
                    H.div ! class_ "title" ! A.id "title" $ do
                        h1 $ a ! href "https://reviews.gobiggi.com/infinite-journeys-and-foliage-outdoors" ! target "_blank" $ "Reviews"
                        a ! href "javascript:void(0);" ! class_ "review-panel-close" ! A.id "review-panel-close" $ mempty
                    H.div ! class_ "review-scroll" ! A.id "review-scroll" $ mempty
                    H.div ! class_ "review-footer" ! A.id "review-footer" $ p $ do
                        a ! href "https://www.gobiggi.com/?_branch_match_id=278786155911402217" ! target "_blank" $ "Review"
                        "By"
                        a ! href "https://www.gobiggi.com/?_branch_match_id=278786155911402217" ! target "_blank" $ img ! src "./foliage_files/gobiggi-review.png"
            H.div ! class_ "black-overlay" ! A.id "black-overlay" $ mempty
            iframe ! src "./foliage_files/saved_resource(4).html" ! A.title "chat widget logging" ! A.style "display: none !important;" $ mempty

