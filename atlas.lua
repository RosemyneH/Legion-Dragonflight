local addon = select(2,...)
addon._dir = addon._dir or [[Interface\AddOns\legionDF\assets\]]
local assets = addon._dir
local unpack = unpack;
local uiactionbar = assets..'uiactionbar';
local uiexperiencebar = assets..'uiexperiencebar';
local uimicromenu = assets..'uimicromenu';
local uimicromenu2x = assets..'uimicromenu2x';
local collapse = assets..'uicollapsebutton';
local bagmain2x = assets..'bagslots2x';
local uiactionbar2x_ = assets..'uiactionbar2x_';
local uiactionbar2x_new = assets..'uiactionbar2x_new';
local uiactionbar2x_flying = assets..'uiactionbar2x_flying';
local uiactionbarvertical = assets..'uiactionbarvertical';
local uiactionbarvertical2x = assets..'uiactionbarvertical2x';
local uicalendar = assets..'uicalendar'
local uiminimap2x = assets..'uiminimap2x';
local battlefield = assets..'uibattlefieldicon';

addon.atlasinfo = {
	['_ui-hud-actionbar-divider-top'] = { uiactionbar2x_, 10, 10, 421/512, 445/512, 833/2048, 861/2048 },
	['_ui-hud-actionbar-divider-bottom'] = { uiactionbar2x_, 10, 10, 395/512, 419/512, 833/2048, 863/2048 },
	['_ui-hud-actionbar-divider-center'] = { uiactionbar2x_, 8, 20, 0, 32/512, 179/2048, 207/2048, false, true },

	['ui-hud-actionbar-gryphon-left'] = { uiactionbar2x_, 92, 92, 1/512, 357/512, 209/2048, 543/2048 },
	['ui-hud-actionbar-gryphon-right'] = { uiactionbar2x_, 92, 92, 1/512, 357/512, 545/2048, 879/2048 },
	['ui-hud-actionbar-gryphon-flying-left'] = { uiactionbar2x_flying, 80, 103, 1/256, 158/256, 149/2048, 342/2048 },
	['ui-hud-actionbar-gryphon-flying-right'] = { uiactionbar2x_flying, 80, 103, 1/256, 157/256, 539/2048, 732/2048 },
	['ui-hud-actionbar-gryphon-thick-left'] = { uiactionbar2x_new, 104.5, 96, 1/512, 357/512, 209/2048, 543/2048 },
	['ui-hud-actionbar-gryphon-thick-right'] = { uiactionbar2x_new, 104.5, 96, 1/512, 357/512, 545/2048, 879/2048 },
	['ui-hud-actionbar-wyvern-thick-left'] = { uiactionbar2x_new, 104.5, 96, 1/512, 357/512, 881/2048, 1215/2048 },
	['ui-hud-actionbar-wyvern-thick-right'] = { uiactionbar2x_new, 104.5, 96, 1/512, 357/512, 1217/2048, 1551/2048 },

	['ui-hud-experiencebar'] = { assets..'mainmenubar', 537, 14, 0.1123046875, 0.646484375, 0.18798828125, 0.24951171875 },
	['ui-hud-experiencebar-round'] = { uiexperiencebar, 537, 18, 1/2048, 572/2048, 1/64, 18/64 },
	['ui-hud-experiencebar-background'] = { uiexperiencebar, 530, 10, 0.00088878125, 570/2048, 20/64, 29/64 },
	['ui-hud-experiencebar-frame-pip'] = { uiexperiencebar, 10, 14, 588/2048, 598/2048, 45/64, 59/64 },
	['ui-hud-experiencebar-frame-pip-mouseover'] = { uiexperiencebar, 10, 14, 574/2048, 586/2048, 45/64, 59/64 },
	['ui-hud-experiencebar-fill'] = { uiexperiencebar, _, _, 1/2048, 564/2048, 31/64, 40/64 },
	['ui-hud-experiencebar-fill-rested'] = { uiexperiencebar, _, _, 574/2048, 1136/2048, 34/64, 43/64 },
	['ui-hud-experiencebar-fill-prediction']  = { uiexperiencebar, _, _, 574/2048, 1136/2048, 1/64, 10/64 },
	['ui-hud-experiencebar-fill-reputation-faction-yellow'] = { uiexperiencebar, _, _, 1139/2048, 1700/2048, 23/64, 32/64 },

	['ui-hud-actionbar-pageuparrow-normal'] = { uiactionbar2x_, 14, 12, 359/512, 393/512, 833/2048, 861/2048 },
	['ui-hud-actionbar-pageuparrow-pushed'] = { uiactionbar2x_, 14, 12, 453/512, 487/512, 679/2048, 707/2048 },
	['ui-hud-actionbar-pageuparrow-highlight'] = { uiactionbar2x_, 14, 12, 453/512, 487/512, 709/2048, 737/2048 },
	['ui-hud-actionbar-pagedownarrow-normal'] = { uiactionbar2x_, 14, 12, 463/512, 497/512, 605/2048, 633/2048 },
	['ui-hud-actionbar-pagedownarrow-pushed'] = { uiactionbar2x_, 14, 12, 463/512, 497/512, 545/2048, 573/2048 },
	['ui-hud-actionbar-pagedownarrow-highlight'] = { uiactionbar2x_, 14, 12, 463/512, 497/512, 575/2048, 603/2048 },
	
	['ui-hud-actionbar-iconframe'] = { uiactionbar2x_new, 64, 64, 359/512, 451/512, 649/2048, 739/2048 },
	-- ['ui-hud-actionbar-iconframe'] = { uiactionbar2x_, 46, 45, 359/512, 461/512, 441/2048, 543/2048 },
	['_ui-hud-actionbar-iconborder-checked'] = { uiactionbar2x_new, 64, 64, 359/512, 451/512, 881/2048, 971/2048 },
	-- ['_ui-hud-actionbar-iconborder-pushed'] = { uiactionbar2x, 64, 64, 0.7041015625, 0.8779296875, 0.32153320312, 0.36450195313 },
	['_ui-hud-actionbar-iconborder-pushed'] = { uiactionbar2x_new, 64, 64, 359/512, 451/512, 881/2048, 971/2048 },
	-- ['_ui-hud-actionbar-iconborder-highlight'] = { uiactionbar2x, 64, 64, 0.7119140625, 0.8623046875, 0.44262695312, 0.48022460938 },
	['_ui-hud-actionbar-iconborder-highlight'] = { uiactionbar2x_new, 64, 64, 359/512, 451/512, 1065/2048, 1155/2048 },
	-- ['_ui-hud-actionbar-iconframe-background'] = { uiactionbar2x, 64, 64, 0.7060546875, 0.8193359375, 0.51538085937, 0.54467773438 },
	['ui-hud-actionbar-iconframe-flyoutbordershadow'] = { uiactionbar2x_new, 52, 52, 359/512, 463/512, 335/2048, 439/2048 },
	['ui-hud-actionbar-iconframe-flash'] = { uiactionbar2x_new, 64, 64, 359/512, 451/512, 973/2048, 1063/2048 },
	['ui-hud-actionbar-iconframe-slot'] = { uiactionbar2x_new, 64, 64, 359/512, 487/512, 209/2048, 333/2048 },
	
	['ui-hud-micromenu-achievement-disabled-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 109/512, 161/512 },
	['ui-hud-micromenu-achievement-down-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 55/512, 107/512 },
	['ui-hud-micromenu-achievement-mouseover-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 55/512, 107/512 },
	['ui-hud-micromenu-achievement-up-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 109/512, 161/512 },
	['ui-hud-micromenu-pvp-disabled-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 163/512, 215/512 },
	['ui-hud-micromenu-pvp-down-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 163/512, 215/512 },
	['ui-hud-micromenu-pvp-mouseover-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 163/512, 215/512 },
	['ui-hud-micromenu-pvp-up-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 271/512, 323/512 },
	['ui-hud-micromenu-character-disabled-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 217/512, 269/512 },
	['ui-hud-micromenu-character-down-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 163/512, 215/512 },
	['ui-hud-micromenu-character-mouseover-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 217/512, 269/512 },
	['ui-hud-micromenu-character-up-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 325/512, 377/512 },
	['ui-hud-micromenu-collections-disabled-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 1/512, 53/512 },
	['ui-hud-micromenu-collections-down-2x'] = { uimicromenu2x, _, _,1/256, 39/256, 379/512, 431/512 },
	['ui-hud-micromenu-collections-mouseover-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 433/512, 485/512 },
	['ui-hud-micromenu-collections-up-2x'] = { uimicromenu2x, _, _,	41/256, 79/256,	163/512, 215/512 },
	-- ['ui-hud-micromenu-communities-icon-notification-2x'] = { uimicromenu2x, _, _, 1/256, 21/256, 487/512, 509/512 },
	['ui-hud-micromenu-help-disabled-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 217/512, 269/512 },
	['ui-hud-micromenu-help-down-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 217/512, 269/512 },
	['ui-hud-micromenu-help-mouseover-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 217/512, 269/512 },
	['ui-hud-micromenu-help-up-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 217/512, 269/512 },
	['ui-hud-micromenu-lfd-disabled-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 271/512, 323/512 },
	['ui-hud-micromenu-lfd-down-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 109/512, 161/512 },
	['ui-hud-micromenu-lfd-mouseover-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 109/512, 161/512 },
	['ui-hud-micromenu-lfd-up-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 163/512, 215/512 },
	['ui-hud-micromenu-socials-disabled-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 1/512, 53/512 },
	['ui-hud-micromenu-socials-down-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 1/512, 53/512 },
	['ui-hud-micromenu-socials-mouseover-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 1/512, 53/512 },
	['ui-hud-micromenu-socials-up-2x'] = { uimicromenu2x, _, _, 41/256, 79/256,55/512,	107/512 },
	-- ['ui-hud-micromenu-highlightalert-2x'] = { uimicromenu2x, _, _, 121/256, 187/256, 379/512, 459/512 },
	['ui-hud-micromenu-questlog-disabled-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 379/512, 431/512 },
	['ui-hud-micromenu-questlog-down-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 271/512, 323/512 },
	['ui-hud-micromenu-questlog-mouseover-2x'] = { uimicromenu2x, _, _, 41/256, 79/256,	433/512, 485/512 },
	['ui-hud-micromenu-questlog-up-2x'] = { uimicromenu2x, _, _, 201/256, 239/256, 271/512, 323/512 },
	['ui-hud-micromenu-mainmenu-disabled-2x'] = { uimicromenu2x, _, _, 41/256, 79/256, 325/512, 377/512 },
	['ui-hud-micromenu-mainmenu-mouseover-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 325/512, 377/512 },
	['ui-hud-micromenu-mainmenu-down-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 271/512, 323/512 },
	['ui-hud-micromenu-mainmenu-up-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 109/512, 161/512 },
	['ui-hud-micromenu-talent-disabled-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 55/512, 107/512 },
	['ui-hud-micromenu-talent-down-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 271/512, 323/512 },
	['ui-hud-micromenu-talent-mouseover-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 1/512, 53/512 },
	['ui-hud-micromenu-talent-up-2x'] = { uimicromenu2x, _, _, 161/256, 199/256, 1/512, 53/512 },
	['ui-hud-micromenu-spellbook-disabled-2x'] = { uimicromenu2x, _, _, 1/256, 39/256, 55/512, 107/512 },
	['ui-hud-micromenu-spellbook-down-2x'] = { uimicromenu2x, _, _, 81/256, 119/256, 433/512, 485/512 },
	['ui-hud-micromenu-spellbook-mouseover-2x'] = { uimicromenu2x, _, _, 189/256, 227/256, 433/512, 485/512 },
	['ui-hud-micromenu-spellbook-up-2x'] = { uimicromenu2x, _, _, 121/256, 159/256, 55/512, 107/512 },
	
	['bag-main-2x'] = { bagmain2x, _, _, 1/512, 97/512,	1/128, 97/128 },
	['bag-main-highlight-2x'] = { bagmain2x, _, _, 99/512, 195/512, 1/128, 97/128 },
	['bag-arrow-2x'] = { bagmain2x, _, _, 484/512, 504/512, 1/128, 33/128 },
	['bag-arrow-invert-2x'] = { collapse, _, _, 8/32, 28/32, 32/64, 62/64 },
	-- ['bag-reagent-border-2x'] = { bagmain2x, _, _, 358/512, 419/512, 64/128, 125/128 },
	['bag-border-2x'] = { bagmain2x, 34, 34, 295/512, 356/512, 1/128, 62/128 },
	['bag-border-empty-2x'] = { bagmain2x, 34, 34, 295/512, 356/512, 64/128, 125/128 },
	['bag-border-highlight-2x'] = { bagmain2x, 40, 40, 358/512, 419/512, 1/128, 62/128 },
	['bag-reagent-border-empty-2x'] = { bagmain2x, 34, 34, 421/512, 482/512, 1/128, 62/128 },
	['bag-reagent-border-2x'] = { assets..'bagslots2key.tga', _, _, 3/128, 63/128, 64/128, 125/128 },
	
	-- NineSlice
	['ui-hud-actionbar-frame-nineslice-cornerbottomleft'] = { uiactionbar2x_, 20, 20, 465/512, 499/512, 383/2048, 429/2048 },
	['ui-hud-actionbar-frame-nineslice-cornerbottomright'] = { uiactionbar2x_, 20, 20, 465/512, 509/512, 335/2048, 381/2048 },
	['ui-hud-actionbar-frame-nineslice-cornertopleft'] = { uiactionbar2x_, 20, 20, 463/512, 497/512, 475/2048, 507/2048 },
	['ui-hud-actionbar-frame-nineslice-cornertopright'] = { uiactionbar2x_, 20, 20, 463/512, 507/512, 441/2048, 473/2048 },
	['_ui-hud-actionbar-frame-nineslice-edgetop'] = { uiactionbar2x_, 506, 20, 0, 32/512, 145/2048, 177/2048, true, false },
	['_ui-hud-actionbar-frame-nineslice-edgebottom'] = { uiactionbar2x_, 506, 20, 0, 32/512, 97/2048, 143/2048, true, false },
	['!ui-hud-actionbar-frame-nineslice-edgeleft'] = { uiactionbarvertical2x, 20, 20, 143/256, 177/256, 0, 32/64, false, true },
	['!ui-hud-actionbar-frame-nineslice-edgeright'] = { uiactionbarvertical2x, 20, 20, 97/256, 141/256, 0, 32/64, false, true },
	['ui-hud-actionbar-frame-nineslice-center'] = { uiactionbar2x_, 0, 0 },
	
	-- NineSlice background
	-- ['ui-hud-actionbar-frame-background-nineslice-center'] = { uiactionbar, 1, 1, 1/256, 5/256, 1/1024, 5/1024 },
	['ui-hud-actionbar-frame-background-nineslice-center'] = { uiactionbar, 506, 20, 0, 16/256, 123/1024, 134/1024, true, false },
	['ui-hud-actionbar-frame-background-nineslice-cornerbottomleft'] = { uiactionbar, 20, 20, 229/256, 240/256, 444/1024, 456/1024 },
	['ui-hud-actionbar-frame-background-nineslice-cornerbottomright'] = { uiactionbar, 20, 20, 229/256, 240/256, 458/1024, 470/1024 },
	['ui-hud-actionbar-frame-background-nineslice-cornertopleft'] = { uiactionbar, 20, 20, 242/256, 253/256, 444/1024, 455/1024 },
	['ui-hud-actionbar-frame-background-nineslice-cornertopright'] = { uiactionbar, 20, 20, 242/256, 253/256, 457/1024, 468/1024 },
	['_ui-hud-actionbar-frame-background-nineslice-edgebottom'] = { uiactionbar, 506, 20, 0, 16/256, 109/1024, 121/1024, true, false },
	['_ui-hud-actionbar-frame-background-nineslice-edgetop'] = { uiactionbar, 506, 20, 0, 16/256, 123/1024, 134/1024, true, false },
	['!ui-hud-actionbar-frame-background-nineslice-edgeleft'] = { uiactionbarvertical, 20, 20, 107/256, 118/256, 0, 16/32, false, true },
	['!ui-hud-actionbar-frame-background-nineslice-edgeright'] = { uiactionbarvertical, 20, 20, 120/256, 131/256, 0, 16/32, false, true },
	
	-- ThreeSlice Divider
	['!ui-hud-actionbar-frame-divider-threeslice-center'] = { uiactionbarvertical2x, 14, 18, 179/256, 203/256, 0, 32/64 },
	['ui-hud-actionbar-frame-divider-threeslice-edgebottom'] = { uiactionbar2x_, 14, 12, 395/512, 419/512, 833/2048, 863/2048 },
	['ui-hud-actionbar-frame-divider-threeslice-edgetop'] = { uiactionbar2x_, 14, 12, 421/512, 445/512, 833/2048, 861/2048 },
	--calendar
	['ui-hud-calendar-1-down'] = { uicalendar, 256, 256, _, _, 1, 22, 1, 20 },
	['ui-hud-calendar-1-mouseover'] = { uicalendar, 256, 256, _, _, 24, 45, 1, 20 },
	['ui-hud-calendar-1-up'] = { uicalendar, 256, 256, _, _, 47, 68, 1, 20 },
	['ui-hud-calendar-10-down'] = { uicalendar, 256, 256, _, _, 70, 91, 1, 20 },
	['ui-hud-calendar-10-mouseover'] = { uicalendar, 256, 256, _, _, 93, 114, 1, 20 },
	['ui-hud-calendar-10-up'] = { uicalendar, 256, 256, _, _, 116, 137, 1, 20 },
	['ui-hud-calendar-11-down'] = { uicalendar, 256, 256, _, _, 139, 160, 1, 20 },
	['ui-hud-calendar-11-mouseover'] = { uicalendar, 256, 256, _, _, 162, 183, 1, 20 },
	['ui-hud-calendar-11-up'] = { uicalendar, 256, 256, _, _, 185, 206, 1, 20 },
	['ui-hud-calendar-12-down'] = { uicalendar, 256, 256, _, _, 208, 229, 1, 20 },
	['ui-hud-calendar-12-mouseover'] = { uicalendar, 256, 256, _, _, 231, 252, 1, 20 },
	['ui-hud-calendar-12-up'] = { uicalendar, 256, 256, _, _,  1, 22, 22, 41 },
	['ui-hud-calendar-13-down'] = { uicalendar, 256, 256, _, _, 24, 45, 22, 41 },
	['ui-hud-calendar-13-mouseover'] = { uicalendar, 256, 256, _, _, 47, 68, 22, 41 },
	['ui-hud-calendar-13-up'] = { uicalendar, 256, 256, _, _, 70, 91, 22, 41 },
	['ui-hud-calendar-14-down'] = { uicalendar, 256, 256, _, _, 93, 114, 22, 41 },
	['ui-hud-calendar-14-mouseover'] = { uicalendar, 256, 256, _, _, 116, 137, 22, 41 },
	['ui-hud-calendar-14-up'] = { uicalendar, 256, 256, _, _, 139, 160, 22, 41 },
	['ui-hud-calendar-15-down'] = { uicalendar, 256, 256, _, _, 162, 183, 22, 41 },
	['ui-hud-calendar-15-mouseover'] = { uicalendar, 256, 256, _, _, 185, 206, 22, 41 },
	['ui-hud-calendar-15-up'] = { uicalendar, 256, 256, _, _, 208, 229, 22, 41 },
	['ui-hud-calendar-16-down'] = { uicalendar, 256, 256, _, _, 231, 252, 22, 41 },
	['ui-hud-calendar-16-mouseover'] = { uicalendar, 256, 256, _, _, 1, 22, 43, 62 },
	['ui-hud-calendar-16-up'] = { uicalendar, 256, 256, _, _, 1, 22, 64, 83 },
	['ui-hud-calendar-17-down'] = { uicalendar, 256, 256, _, _, 1, 22, 85, 104 },
	['ui-hud-calendar-17-mouseover'] = { uicalendar, 256, 256, _, _, 1, 22, 106, 125 },
	['ui-hud-calendar-17-up'] = { uicalendar, 256, 256, _, _, 1, 22, 127, 146 },
	['ui-hud-calendar-18-down'] = { uicalendar, 256, 256, _, _, 1, 22, 148, 167 },
	['ui-hud-calendar-18-mouseover'] = { uicalendar, 256, 256, _, _, 1, 22, 169, 188 },
	['ui-hud-calendar-18-up'] = { uicalendar, 256, 256, _, _, 1, 22, 190, 209 },
	['ui-hud-calendar-19-down'] = { uicalendar, 256, 256, _, _, 1, 22, 211, 230 },
	['ui-hud-calendar-19-mouseover'] = { uicalendar, 256, 256, _, _, 1, 22, 232, 251 },
	['ui-hud-calendar-19-up'] = { uicalendar, 256, 256, _, _, 24, 45, 43, 62 },
	['ui-hud-calendar-2-down'] = { uicalendar, 256, 256, _, _, 47, 68, 43, 62 },
	['ui-hud-calendar-2-mouseover'] = { uicalendar, 256, 256, _, _, 70, 91, 43, 62 },
	['ui-hud-calendar-2-up'] = { uicalendar, 256, 256, _, _, 93, 114, 43, 62 },
	['ui-hud-calendar-20-down'] = { uicalendar, 256, 256, _, _, 116, 137, 43, 62 },
	['ui-hud-calendar-20-mouseover'] = { uicalendar, 256, 256, _, _, 139, 160, 43, 62 },
	['ui-hud-calendar-20-up'] = { uicalendar, 256, 256, _, _, 162, 183, 43, 62 },
	['ui-hud-calendar-21-down'] = { uicalendar, 256, 256, _, _, 185, 206, 43, 62 },
	['ui-hud-calendar-21-mouseover'] = { uicalendar, 256, 256, _, _, 208, 229, 43, 62 },
	['ui-hud-calendar-21-up'] = { uicalendar, 256, 256, _, _, 231, 252, 43, 62 },
	['ui-hud-calendar-22-down'] = { uicalendar, 256, 256, _, _, 24, 45, 64, 83 },
	['ui-hud-calendar-22-mouseover'] = { uicalendar, 256, 256, _, _, 24, 45, 85, 104 },
	['ui-hud-calendar-22-up'] = { uicalendar, 256, 256, _, _, 24, 45, 106, 125 },
	['ui-hud-calendar-23-down'] = { uicalendar, 256, 256, _, _, 24, 45, 127, 146 },
	['ui-hud-calendar-23-mouseover'] = { uicalendar, 256, 256, _, _, 24, 45, 148, 167 },
	['ui-hud-calendar-23-up'] = { uicalendar, 256, 256, _, _, 24, 45, 169, 188 },
	['ui-hud-calendar-24-down'] = { uicalendar, 256, 256, _, _, 24, 45, 190, 209 },
	['ui-hud-calendar-24-mouseover'] = { uicalendar, 256, 256, _, _, 24, 45, 211, 230 },
	['ui-hud-calendar-24-up'] = { uicalendar, 256, 256, _, _, 24, 45, 232, 251 },
	['ui-hud-calendar-25-down'] = { uicalendar, 256, 256, _, _, 47, 68, 64, 83 },
	['ui-hud-calendar-25-mouseover'] = { uicalendar, 256, 256, _, _, 70, 91, 64, 83 },
	['ui-hud-calendar-25-up'] = { uicalendar, 256, 256, _, _, 93, 114, 64, 83 },
	['ui-hud-calendar-26-down'] = { uicalendar, 256, 256, _, _, 116, 137, 64, 83 },
	['ui-hud-calendar-26-mouseover'] = { uicalendar, 256, 256, _, _, 139, 160, 64, 83 },
	['ui-hud-calendar-26-up'] = { uicalendar, 256, 256, _, _, 162, 183, 64, 83 },
	['ui-hud-calendar-27-down'] = { uicalendar, 256, 256, _, _, 185, 206, 64, 83 },
	['ui-hud-calendar-27-mouseover'] = { uicalendar, 256, 256, _, _, 208, 229, 64, 83 },
	['ui-hud-calendar-27-up'] = { uicalendar, 256, 256, _, _, 231, 252, 64, 83 },
	['ui-hud-calendar-28-down'] = { uicalendar, 256, 256, _, _, 47, 68, 85, 104 },
	['ui-hud-calendar-28-mouseover'] = { uicalendar, 256, 256, _, _, 47, 68, 106, 125 },
	['ui-hud-calendar-28-up'] = { uicalendar, 256, 256, _, _, 47, 68, 127, 146 },
	['ui-hud-calendar-29-down'] = { uicalendar, 256, 256, _, _, 47, 68, 148, 167 },
	['ui-hud-calendar-29-mouseover'] = { uicalendar, 256, 256, _, _, 47, 68, 169, 188 },
	['ui-hud-calendar-29-up'] = { uicalendar, 256, 256, _, _, 47, 68, 190, 209 },
	['ui-hud-calendar-3-down'] = { uicalendar, 256, 256, _, _, 47, 68, 211, 230 },
	['ui-hud-calendar-3-mouseover'] = { uicalendar, 256, 256, _, _, 47, 68, 232, 251 },
	['ui-hud-calendar-3-up'] = { uicalendar, 256, 256, _, _, 70, 91, 85, 104 },
	['ui-hud-calendar-30-down'] = { uicalendar, 256, 256, _, _, 93, 114, 85, 104 },
	['ui-hud-calendar-30-mouseover'] = { uicalendar, 256, 256, _, _, 116, 137, 85, 104 },
	['ui-hud-calendar-30-up'] = { uicalendar, 256, 256, _, _, 139, 160, 85, 104 },
	['ui-hud-calendar-31-down'] = { uicalendar, 256, 256, _, _, 162, 183, 85, 104 },
	['ui-hud-calendar-31-mouseover'] = { uicalendar, 256, 256, _, _, 185, 206, 85, 104 },
	['ui-hud-calendar-31-up'] = { uicalendar, 256, 256, _, _, 208, 229, 85, 104 },
	['ui-hud-calendar-4-down'] = { uicalendar, 256, 256, _, _, 231, 252, 85, 104 },
	['ui-hud-calendar-4-mouseover'] = { uicalendar, 256, 256, _, _, 70, 91, 106, 125 },
	['ui-hud-calendar-4-up'] = { uicalendar, 256, 256, _, _, 70, 91, 127, 146 },
	['ui-hud-calendar-5-down'] = { uicalendar, 256, 256, _, _, 70, 91, 148, 167 },
	['ui-hud-calendar-5-mouseover'] = { uicalendar, 256, 256, _, _, 70, 91, 169, 188 },
	['ui-hud-calendar-5-up'] = { uicalendar, 256, 256, _, _, 70, 91, 190, 209 },
	['ui-hud-calendar-6-down'] = { uicalendar, 256, 256, _, _, 70, 91, 211, 230 },
	['ui-hud-calendar-6-mouseover'] = { uicalendar, 256, 256, _, _, 70, 91, 232, 251 },
	['ui-hud-calendar-6-up'] = { uicalendar, 256, 256, _, _, 93, 114, 106, 125 },
	['ui-hud-calendar-7-down'] = { uicalendar, 256, 256, _, _, 116, 137, 106, 125 },
	['ui-hud-calendar-7-mouseover'] = { uicalendar, 256, 256, _, _, 139, 160, 106, 125 },
	['ui-hud-calendar-7-up'] = { uicalendar, 256, 256, _, _, 162, 183, 106, 125 },
	['ui-hud-calendar-8-down'] = { uicalendar, 256, 256, _, _, 185, 206, 106, 125 },
	['ui-hud-calendar-8-mouseover'] = { uicalendar, 256, 256, _, _, 208, 229, 106, 125 },
	['ui-hud-calendar-8-up'] = { uicalendar, 256, 256, _, _, 231, 252, 106, 125 },
	['ui-hud-calendar-9-down'] = { uicalendar, 256, 256, _, _, 93, 114, 127, 146 },
	['ui-hud-calendar-9-mouseover'] = { uicalendar, 256, 256, _, _, 93, 114, 148, 167 },
	['ui-hud-calendar-9-up'] = { uicalendar, 256, 256, _, _, 93, 114, 169, 188 },

	--minimap
	['ui-hud-minimap-button'] = { uiminimap2x, 512, 1024, 21, 19, 441, 480, 402, 440 },
	['ui-hud-minimap-bordertop'] = { uiminimap2x, 512, 1024, 156, 17, 105, 360, 609, 636 },
	['ui-hud-minimap-mail-up'] = { uiminimap2x, 512, 1024, 21, 14, 42, 81, 520, 550 },
	['ui-hud-minimap-tracking-down'] = { uiminimap2x, 512, 1024, 21, 14, 83, 115, 520, 550 },
	['ui-hud-minimap-tracking-mouseover'] = { uiminimap2x, 512, 1024, 21, 14, 117, 147, 520, 548 },
	['ui-hud-minimap-tracking-up'] = { uiminimap2x, 512, 1024, 21, 14, 149, 179, 520, 548 },
	['ui-hud-minimap-pvp-alliance-up'] = { battlefield, 256, 64, 21, 14, 72, 126, 5, 58 },
	['ui-hud-minimap-pvp-alliance-down'] = { battlefield, 256, 64, 21, 14, 17, 71, 5, 58 },
	['ui-hud-minimap-pvp-horde-up'] = { battlefield, 256, 64, 21, 14, 181, 235, 5, 58 },
	['ui-hud-minimap-pvp-horde-down'] = { battlefield, 256, 64, 21, 14, 127, 182, 5, 58 },

	['ui-hud-minimap-zoom-in'] = { uiminimap2x, 512, 1024, 20, 19, 1, 35, 552, 586 },
	['ui-hud-minimap-zoom-in-down'] = { uiminimap2x, 512, 1024, 20, 19, 1, 35, 588, 622 },
	['ui-hud-minimap-zoom-in-mouseover'] = { uiminimap2x, 512, 1024, 20, 19, 1, 35, 624, 658 },
	['ui-hud-minimap-zoom-out'] = { uiminimap2x, 512, 1024, 20, 10, 181, 215, 520, 538 },
	['ui-hud-minimap-zoom-out-down'] = { uiminimap2x, 512, 1024, 20, 10, 217, 251, 520, 538 },
	['ui-hud-minimap-zoom-out-mouseover'] = { uiminimap2x, 512, 1024, 20, 10, 253, 287, 520, 538 },

	['ui-hud-aura-arrow'] = { collapse, 32, 64, _, _, 8, 28, 0, 31 },
	['ui-hud-aura-arrow-invert'] = { collapse, 32, 64, _, _, 8, 28, 32, 62 },
};

local C_Texture = {};
local CONST_ATLAS_TEXTUREPATH	= 1
local CONST_ATLAS_WIDTH			= 2
local CONST_ATLAS_HEIGHT		= 3
local CONST_ATLAS_LEFT			= 4
local CONST_ATLAS_RIGHT			= 5
local CONST_ATLAS_TOP			= 6
local CONST_ATLAS_BOTTOM		= 7
local CONST_ATLAS_TILESHORIZ	= 8
local CONST_ATLAS_TILESVERT		= 9

function C_Texture.GetAtlasInfo(atlas)
	assert(atlas, 'C_Texture.GetAtlasInfo: atlas must be specified');
	assert(addon.atlasinfo[atlas], 'C_Texture.GetAtlasInfo: atlas [ '..atlas..' ] does not exist');

	local atlas = addon.atlasinfo[atlas];
	local AtlasInfo = {};

	AtlasInfo.filename 			= atlas[CONST_ATLAS_TEXTUREPATH];
	AtlasInfo.width 			= atlas[CONST_ATLAS_WIDTH];
	AtlasInfo.height 			= atlas[CONST_ATLAS_HEIGHT];
	AtlasInfo.leftTexCoord 		= atlas[CONST_ATLAS_LEFT];
	AtlasInfo.rightTexCoord 	= atlas[CONST_ATLAS_RIGHT];
	AtlasInfo.topTexCoord 		= atlas[CONST_ATLAS_TOP];
	AtlasInfo.bottomTexCoord 	= atlas[CONST_ATLAS_BOTTOM];
	AtlasInfo.tilesHorizontally = atlas[CONST_ATLAS_TILESHORIZ];
	AtlasInfo.tilesVertically 	= atlas[CONST_ATLAS_TILESVERT];

	return AtlasInfo;
end

function C_Texture.GetFinalNameFromTextureKit(fmt, textureKits)
	if type(textureKits) == 'table' then
		return fmt:format(unpack(textureKits));
	else
		return fmt:format(textureKits);
	end
end
addon.c_texture = C_Texture;
