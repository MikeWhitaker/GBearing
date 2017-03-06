using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Data;

namespace GBearing {
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window{
	

		public MainWindow() {
			LatLon bearingTextOutput = new LatLon();

			Binding bearingBinding = new Binding();
			bearingBinding.Source = bearingTextOutput;
			bearingBinding.Path = new PropertyPath("EndBearing");
			InitializeComponent();



		}

		//private void mainWindow_Loaded(object sender, RoutedEventArgs e) {

		//	Binding bearingBinding = new Binding();
		//	bearingBinding.Source = this;
		//	bearingBinding.Path = new PropertyPath(EndBearing);

		//	// Add the binding to the Text property of the TextBox.
		//	//tbBearing.SetBinding(Block.TextProperty, coffeeBinding);
			
		//}

		private void button_Click(object sender, RoutedEventArgs e) {
			// Test is input field is a float
			float inputStartLat = 0f;
			float inputStartLon = 0f;
			float inputEndLat = 0f;
			float inputEndLon = 0f;

			if (Single.TryParse(tbStartLat.Text, out inputStartLat) && Single.TryParse(tbStartLon.Text, out inputStartLon)
				&& Single.TryParse(tbEndLat.Text, out inputEndLat)
				&& Single.TryParse(tbEndLon.Text, out inputEndLon)) {

			} else { 
				MessageBox.Show("Please enter a numerical values in all input fields for conversion ...", "Conversion Error ...");
			}







			LatLon startPoint = new LatLon(inputStartLat, inputStartLon);
			LatLon endPoint = new LatLon(inputEndLat, inputEndLon);

			float bearing = Bearing(startPoint, endPoint);

					
			
			//LatLon endPoint = new LatLon(52.496112f, 6.106098F);

		}

		static float Bearing(LatLon p1, LatLon p2) {

			float RadPoint1 = ToRadians(p1.lat);
			float RadPoint2 = ToRadians(p2.lat);

			float DeltaAlfa = ToRadians((p2.lon - p1.lon));


			float y = Convert.ToSingle(Math.Sin(DeltaAlfa) * Math.Cos(RadPoint2));

			float x = Convert.ToSingle(Math.Cos(RadPoint1) * Math.Sin(RadPoint2) - Math.Sin(RadPoint1) * Math.Cos(RadPoint2) * Math.Cos(DeltaAlfa));

			float O = Convert.ToSingle(Math.Atan2(y, x));


			return (ToDegress(O) + 360) % 360;
		}

		static float ToRadians(float lat) {
			return Convert.ToSingle(lat * Math.PI / 180);

		}

		static float ToDegress(float O) {
			return Convert.ToSingle(O * 180 / Math.PI);

		}

	}

}

