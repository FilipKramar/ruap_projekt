using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Text;
using Newtonsoft.Json.Linq;

namespace gljive2
{

    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected async Task Page_LoadAsync()
        {
            var options = new RestClientOptions("https://ussouthcentral.services.azureml.net")
            {
                MaxTimeout = -1,
            };
            var client = new RestClient(options);
            var request = new RestRequest("/workspaces/fcc4481736f741db878b4fc4390a6ffe/services/fb5cf89f07614abfb4a6e0ad1ac46c23/execute?api-version=2.0&details=true", Method.Post);
            request.AddHeader("Authorization", "Bearer lk3gqw56AwLlj7CAMEFDgvTOe/ucf7+INlm+NFK54ZRiRrqiNO/6Vn4hIDrvPeybSbU0uAvJanAc+AMC+IGq4g==");
            request.AddHeader("Content-Type", "application/json");
            var body = @"{
" + "\n" +
@"  ""Inputs"": {
" + "\n" +
@"    ""input1"": {
" + "\n" +
@"      ""ColumnNames"": [
" + "\n" +
@"        ""class"",
" + "\n" +
@"        ""cap-shape"",
" + "\n" +
@"        ""cap-surface"",
" + "\n" +
@"        ""cap-color"",
" + "\n" +
@"        ""gill-attachment"",
" + "\n" +
@"        ""gill-spacing"",
" + "\n" +
@"        ""gill-size"",
" + "\n" +
@"        ""gill-color"",
" + "\n" +
@"        ""stalk-shape"",
" + "\n" +
@"        ""stalk-root"",
" + "\n" +
@"        ""veil-type"",
" + "\n" +
@"        ""veil-color"",
" + "\n" +
@"        ""ring-number"",
" + "\n" +
@"        ""ring-type"",
" + "\n" +
@"        ""habitat""
" + "\n" +
@"      ],
" + "\n" +
$@"      ""Values"": [
" + "\n" +
$@"        [" + "\n" +
$@"                    ""{klass.SelectedValue}"",
" + "\n" +
$@"                    ""{capshape.SelectedValue}"",
" + "\n" +
$@"                    ""{capsurface.SelectedValue}"",
" + "\n" +
$@"                    ""{capcolor.SelectedValue}"",
" + "\n" +
$@"                    ""{gillatt.SelectedValue}"",
" + "\n" +
$@"                    ""{gilspac.SelectedValue}"",
" + "\n" +
$@"                    ""{gilsize.SelectedValue}"",
" + "\n" +
$@"                    ""{gilcol.SelectedValue}"",
" + "\n" +
$@"                    ""{stalkshap.SelectedValue}"",
" + "\n" +
$@"                    ""{stalkroot.SelectedValue}"",
" + "\n" +
@"                    ""p"",
" + "\n" +
$@"                    ""{veilcol.SelectedValue}"",
" + "\n" +
$@"                    ""{ringnumb.SelectedValue}"",
" + "\n" +
$@"                    ""{ringtype.SelectedValue}"",
" + "\n" +
$@"                    ""{habitiat.SelectedValue}""
" + "\n" +
@"                    
" + "\n" +
@"        ]
" + "\n" +
@"      ]
" + "\n" +
@"    }
" + "\n" +
@"  }
" + "\n" +
@"
" + "\n" +
@"}
" + "\n" +
@"";
            request.AddStringBody(body, DataFormat.Json);
            RestResponse response = await client.ExecuteAsync(request).ConfigureAwait(false);
            Console.WriteLine(response.Content);

            var results = JObject.Parse(response.Content );
            string label = results["Results"]["output1"]["value"]["Values"].ToString();
            label = label.Replace("[", "").Replace("]", "").Replace(",", "  ").Replace("\"", "").Replace("{","").Replace("}","").Replace(":"," ").Replace("p", "Poisonouns").Replace("e","Edable");
            Labelrez.Text =label;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page_LoadAsync().Wait();

        }
    }
   
}

  