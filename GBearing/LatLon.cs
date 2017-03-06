using System;
namespace GBearing {

	public class LatLon {
		public float lat = 0;
		public float lon = 0;
		public string EndBearing { get; set; }

		public LatLon() {

			this.EndBearing = "NAN";
		}

		public LatLon(float lat, float lon) {
			this.lat = lat;
			this.lon = lon;

		}
	}
}
