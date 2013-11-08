
####compiler####
CC=/mnt/sda6/Stuff/git/lazyux/sysroot/bin/musl-gcc

####compilerflags####
COMPFLAGS=-pipe -fPIC -Os -Wall -D_BSD_SOURCE -D_GNU_SOURCE -D__KERNEL_STRICT_NAMES  \
-fno-strength-reduce -nodefaultlibs -fno-strict-aliasing \
-ffunction-sections -fdata-sections \
-I.

####extensions####
DPMS=-DDPMSExtension
SCREENSAVER=-DSCREENSAVER
#+6Kb
MIT-SHM=-DMITSHM
RENDER=-DRENDER
#FIXME SHAPE:if not defined dont define PANORAMIX=-DPANORAMIX
SHAPE=-DSHAPE
SYNC=-DXSYNC
TOG-CUP=-DTOGCUP
#+1Kb
XCMISC=-DXCMISC
XTEST=-DXTEST
XTRAP=-DXTRAP
XV=-DXV
RANDR=-DRANDR
XRECORD=-DXRECORD
#+10Kb
XDMCP=-DXDMCP
# -DFONTCACHE or -DNOFONTSERVERACCESS
FONTCACHE=-DFONTCACHE

####not working####
#XINPUT=-DXINPUT
#XKB=-DXKB/XKB_IN_SERVER=-DXKB
#LBX=-DLBX

####others####
#+2Kb
SERVER_LOCK=-DSERVER_LOCK
#+1Kb
SMART_SCHEDULE=-DSMART_SCHEDULE
#+0Kb
#USE_RGB_TXT=-DUSE_RGB_TXT
#+10Kb
XDMCP=-DXDMCP
PANORAMIX=-DPANORAMIX
#+0Kb (unused?)
X_LOCALE=-DX_LOCALE
#+1Kb
PIXPRIV=-DPIXPRIV
#+3Kb
XF86BIGFONT=-DXF86BIGFONT
#+1Kb
BIGREQS=-DDBIGREQS

#-DRGB_DB=\"/usr/share/X11/rgb.txt\" \

#all deactivated creates 543K Xvesa
#all activated creates 728K Xvesa
COMMONDEFS=$(COMPFLAGS) \
-DNOERROR \
-Dlinux \
-D_POSIX_SOURCE \
-D_BSD_SOURCE \
-DTOSHIBA_SMM \
-D_SVID_SOURCE \
-D_GNU_SOURCE \
-DKDRIVESERVER \
-DGCCUSESGAS \
-DDDXOSINIT \
-DNDEBUG \
-DNARROWPROTO \
-DFUNCPROTO=15 \
-DCOMPILEDDEFAULTFONTPATH=\"/usr/share/fonts/misc/,/usr/share/fonts/truetype/,/usr/share/fonts/X11/100dpi/,/usr/share/fonts/X11/75dpi/\" \
-D_POSIX_C_SOURCE=2 \
$(FONTCACHE) \
$(XTEST) \
$(DPMS) \
$(SYNC) \
$(PANORAMIX) \
$(SHAPE) \
$(TOG-CUP) \
$(MIT-SHM) \
$(RENDER) \
$(SCREENSAVER) \
$(SERVER_LOCK) \
$(SMART_SCHEDULE) \
$(XCMISC) \
$(XDMCP) \
$(XTRAP) \
$(XV) \
$(RANDR) \
$(XRECORD) \
$(USE_RGB_TXT) \
$(PIXPRIV) \
$(X_LOCALE) \
$(XF86BIGFONT) \
$(BIGREQS) \
-D__KERNEL_STRICT_NAMES

LDFLAGS=-fPIC -static -Wl,--gc-sections,--sort-common,-s

LINKDIR=-L/mnt/sda6/Stuff/git/lazyux/sysroot/lib

LIBDIR=/mnt/sda6/Stuff/git/lazyux/sysroot/lib

INCDIR=/mnt/sda6/Stuff/git/lazyux/sysroot/usr/include


