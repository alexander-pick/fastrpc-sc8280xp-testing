lib_LTLIBRARIES =

LIBDSPRPC_CFLAGS = -fno-short-enums -U_DEBUG -DARM_ARCH_7A -DLE_ENABLE -DUSE_SYSLOG -I$(top_srcdir)/inc

LIBDSPRPC_SOURCES = \
		fastrpc_apps_user.c \
		remotectl_stub.c \
		listener_android.c \
		adsp_current_process_stub.c \
		adsp_current_process1_stub.c \
		apps_std_skel.c \
		apps_std_imp.c \
		apps_mem_imp.c \
		apps_mem_skel.c \
		rpcmem_android.c \
		apps_remotectl_skel.c \
		std.c \
		std_path.c \
		std_mem.c \
		std_dtoa.c \
		std_strlprintf.c \
		BufBound.c \
		std_SwapBytes.c \
		smath.c \
		atomic.c \
		cae.c \
		adspmsgd_apps_skel.c \
		adspmsgd_adsp_stub.c \
		adspmsgd_adsp1_stub.c \
		adspmsgd_apps.c \
		platform_libs.c \
		pl_list.c \
		log_config.c \
		gpls.c \
		adsp_perf_stub.c \
		fastrpc_perf.c \
		mod_table.c

LIBDEFAULT_LISTENER_SOURCES = \
				adsp_default_listener.c \
				adsp_default_listener_stub.c \
				std.c \
				std_mem.c

ADSP_CFLAGS = $(LIBDSPRPC_CFLAGS) -DDEFAULT_DOMAIN_ID=0

lib_LTLIBRARIES += libadsprpc.la
libadsprpc_la_SOURCES = $(LIBDSPRPC_SOURCES)
libadsprpc_la_LDFLAGS = -ldl -lpthread -lm
libadsprpc_la_CFLAGS = $(ADSP_CFLAGS)

lib_LTLIBRARIES += libadsp_default_listener.la
libadsp_default_listener_la_SOURCES = $(LIBDEFAULT_LISTENER_SOURCES)
libadsp_default_listener_la_DEPENDENCIES = libadsprpc.la
libadsp_default_listener_la_LDFLAGS = libadsprpc.la -shared -module -avoid-version
libadsp_default_listener_la_CFLAGS = $(ADSP_CFLAGS)

CDSP_CFLAGS = $(LIBDSPRPC_CFLAGS) -DDEFAULT_DOMAIN_ID=3

lib_LTLIBRARIES += libcdsprpc.la
libcdsprpc_la_SOURCES = $(LIBDSPRPC_SOURCES)
libcdsprpc_la_LDFLAGS = -ldl -lpthread -lm
libcdsprpc_la_CFLAGS = $(CDSP_CFLAGS)

lib_LTLIBRARIES += libcdsp_default_listener.la
libcdsp_default_listener_la_SOURCES = $(LIBDEFAULT_LISTENER_SOURCES)
libcdsp_default_listener_la_DEPENDENCIES = libcdsprpc.la
libcdsp_default_listener_la_LDFLAGS = libcdsprpc.la -shared -module -avoid-version
libcdsp_default_listener_la_CFLAGS = $(CDSP_CFLAGS)

SDSP_CFLAGS = $(LIBDSPRPC_CFLAGS) -DDEFAULT_DOMAIN_ID=2

lib_LTLIBRARIES += libsdsprpc.la
libsdsprpc_la_SOURCES = $(LIBDSPRPC_SOURCES)
libsdsprpc_la_LDFLAGS = -ldl -lpthread -lm
libsdsprpc_la_CFLAGS = $(SDSP_CFLAGS)

lib_LTLIBRARIES += libsdsp_default_listener.la
libsdsp_default_listener_la_SOURCES = $(LIBDEFAULT_LISTENER_SOURCES)
libsdsp_default_listener_la_DEPENDENCIES = libsdsprpc.la
libsdsp_default_listener_la_LDFLAGS = libsdsprpc.la -shared -module -avoid-version
libsdsp_default_listener_la_CFLAGS = $(SDSP_CFLAGS)


bin_PROGRAMS = adsprpcd cdsprpcd sdsprpcd

adsprpcddir = $(libdir)
adsprpcd_SOURCES = adsprpcd.c
adsprpcd_DEPENDENCIES = libadsp_default_listener.la
adsprpcd_CFLAGS = -I$(top_srcdir)/inc -DDEFAULT_DOMAIN_ID=0
adsprpcd_LDADD = -ldl


cdsprpcddir = $(libdir)
cdsprpcd_SOURCES = cdsprpcd.c
cdsprpcd_DEPENDENCIES = libcdsp_default_listener.la
cdsprpcd_CFLAGS = -I$(top_srcdir)/inc -DDEFAULT_DOMAIN_ID=3
cdsprpcd_LDADD =  -ldl


sdsprpcddir = $(libdir)
sdsprpcd_SOURCES = sdsprpcd.c
sdsprpcd_DEPENDENCIES = libsdsp_default_listener.la
sdsprpcd_CFLAGS = -I$(top_srcdir)/inc -DDEFAULT_DOMAIN_ID=2
sdsprpcd_LDADD =  -ldl


otherincludedir = $(includedir)/fastrpc
otherinclude_HEADERS = $(top_srcdir)/inc/*.h
