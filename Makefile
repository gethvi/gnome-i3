INSTALL = install

PATH_GNOME_I3 = /usr/bin/gnome-i3
PATH_GNOME_I3_DESKTOP = /usr/share/applications/gnome-i3.desktop
PATH_GNOME_FLASHBACK_I3 = /usr/libexec/gnome-flashback-i3
PATH_GNOME_FLASHBACK_I3_XSESSION = /usr/share/xsessions/gnome-flashback-i3.desktop
PATH_GNOME_FLASHBACK_I3_GNOME_SESSION = /usr/share/gnome-session/sessions/gnome-flashback-i3.session
PATH_GNOME_FLASHBACK_I3_SESSION_CONF = /usr/lib/systemd/user/gnome-session@gnome-flashback-i3.target.d/session.conf
PATH_GNOME_FLASHBACK_I3_GSCHEMA_OVERRIDE = /usr/share/glib-2.0/schemas/10_gnome-flashback-i3.gschema.override


install:
	$(INSTALL) -m0755 -D bullseye/usr/bin/gnome-i3 $(PATH_GNOME_I3)
	$(INSTALL) -m0644 -D bullseye/usr/share/applications/gnome-i3.desktop $(PATH_GNOME_I3_DESKTOP)
	$(INSTALL) -m0755 -D bullseye/usr/libexec/gnome-flashback-i3 $(PATH_GNOME_FLASHBACK_I3)
	$(INSTALL) -m0644 -D bullseye/usr/share/xsessions/gnome-flashback-i3.desktop $(PATH_GNOME_FLASHBACK_I3_XSESSION)
	$(INSTALL) -m0644 -D bullseye/usr/share/gnome-session/sessions/gnome-flashback-i3.session $(PATH_GNOME_FLASHBACK_I3_GNOME_SESSION)
	$(INSTALL) -m0644 -D bullseye/usr/lib/systemd/user/gnome-session@gnome-flashback-i3.target.d/session.conf $(PATH_GNOME_FLASHBACK_I3_SESSION_CONF)
	$(INSTALL) -m0644 -D bullseye/usr/share/glib-2.0/schemas/10_gnome-flashback-i3.gschema.override $(PATH_GNOME_FLASHBACK_I3_GSCHEMA_OVERRIDE)

	glib-compile-schemas /usr/share/glib-2.0/schemas/

uninstall:
	rm -f $(PATH_GNOME_I3)
	rm -f $(PATH_GNOME_I3_DESKTOP)
	rm -f $(PATH_GNOME_FLASHBACK_I3)
	rm -f $(PATH_GNOME_FLASHBACK_I3_XSESSION)
	rm -f $(PATH_GNOME_FLASHBACK_I3_GNOME_SESSION)
	rm -f $(PATH_GNOME_FLASHBACK_I3_SESSION_CONF)
	rm -f $(PATH_GNOME_FLASHBACK_I3_GSCHEMA_OVERRIDE)

	glib-compile-schemas /usr/share/glib-2.0/schemas/



.PHONY: all install uninstall