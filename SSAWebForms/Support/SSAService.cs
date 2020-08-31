using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;    
using System.Net;  
using System.Text;
using System.Threading.Tasks;

namespace SSAForms.Support
{
    public enum httpverb
    {
        GET,
        POST,
        PUT,
        DELETE
    }

    public class SSAService
    {
        /// <summary>
        /// http link of service 
        /// </summary>
        public string endpoint { get; set; }

        /// <summary>
        /// used to specify request type
        /// </summary>
        public httpverb httpMethod { get; set; }

        /// <summary>
        /// Default constructor
        /// </summary>
        public SSAService()
        {
            // instantiate to empty string
            endpoint = string.Empty;

            // set http verb default to get
            httpMethod = httpverb.GET;
        }


        /// <summary>
        /// Makes request to service
        /// </summary>
        /// <returns>Request response string</returns>
        public string makeRequest()
        {
            string strresponse = string.Empty;

            //Request cast because
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(endpoint);
            request.Method = httpMethod.ToString();
            HttpWebResponse response = null;

            try
            {
                //Attempt to get response back something about sync to server
                //Was it successful or not its not passing the data
                response = (HttpWebResponse)request.GetResponse();

                //Proecess the response stream... (could be JSON, XML or HTML etc..._
                //The actial response data
                using (Stream responseStream = response.GetResponseStream())
                {
                    //Status check to see what the response from server was(if it was not null then something wrong happened)
                    
                    //Now we are assuming everything went well
                    //Set up stream object
                    //it brings back stream of data put it into the stream
                    if (responseStream != null)
                    {
                        
                        using (StreamReader reader = new StreamReader(responseStream))
                        {
                            //Using stream reader read to end of the stream
                            strresponse = reader.ReadToEnd();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                //We catch non Http 200 responses here.
                strresponse = "{\"errorMessages\":[\"" + ex.Message.ToString() + "\"],\"errors\":{}}";
            }
            finally
            {
                if (response != null)
                {
                    ((IDisposable)response).Dispose();
                }
            }
                return strresponse;
        }
    }
}