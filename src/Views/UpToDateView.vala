/*
 * Copyright (c) 2021 elementary, Inc. (https://elementary.io)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authored by: Marius Meisenzahl <mariusmeisenzahl@gmail.com>
 */

public class UpToDateView : AbstractUpgradeView {
    public UpToDateView () {
        Object (cancellable: true);
    }

    construct {
        var logo = new Gtk.Image () {
            icon_name = "distributor-logo",
            pixel_size = 128
        };
        logo.get_style_context ().add_class ("logo");

        var heading = new Gtk.Label (Utils.get_pretty_name ());
        heading.get_style_context ().add_class (Granite.STYLE_CLASS_H2_LABEL);

        var description = new Gtk.Label ("%s is up to date.".printf (Utils.get_name ()));

        content_area.margin_end = 22;
        content_area.margin_start = 22;
        content_area.halign = Gtk.Align.CENTER;
        content_area.valign = Gtk.Align.CENTER;
        content_area.add (logo);
        content_area.add (heading);
        content_area.add (description);

        show_all ();
    }
}
