defmodule Webpush do
  @moduledoc """
  Documentation for Webpush.
  """
  @push_message ~s({"name": "Imcoming call joe from Help Lightning", "token": "1234567890"})

  # below information comes from client side
  @chrome_subscription %{
    endpoint: "https://fcm.googleapis.com/fcm/send/eWGOSaiH30o:APA91bGq-wJQvsEp8olvouW_e_nx4SSL-NNX0mv9pqe1tanSgy4Gv49A9xKStvZzKlvH4Hh7S_dZgG54roDEQ7iofsnZEV_48q6aLLktJoEdmL34QRzqGnHoT-dlMOKEgQm3-w6MgEVx",
    expirationTime: nil,
    keys:
      %{
        p256dh: "BOhB0rbdSkaIhlWZbCKzjjO3zvHQi_U76SdDsuQ5Fuem1iYUL6GFYjijkJMSVeutAYDp9YxnvfL8lUmWKz6SkIE",
        auth: "UyV37QWmA_bHfaNtrYkQaA"
      }
  }

  @firefox_subscription %{
    endpoint: "https://updates.push.services.mozilla.com/wpush/v2/gAAAAABfpMGGyMAb6_HZybonV8oGQkAK5SUXIBtuMnXMSjLX5k8euExlf6-Nk6e_t4pQ4W6q-FvpGVPAovADYAr_Hf9eRNA46wydJka2JlXBuM8pFdFBauL3iH5Xjn0NsDKCcZPnedGCN1OeoJI7DjNF57tx-j0bjLV7wXHHa-9VMrFRXFOz0_4",
    expirationTime: nil,
    keys:
      %{
        p256dh: "BMjCR_vigZgZsGA7QlAXBzuxTa7y7KgDHefjWO5XsLCUBV6xuw8VzILhiHUCiTIBK6Hudvn0BKTE9vyNT3-9nhA",
        auth: "bokRIz6wIrrV662hrPwa0w"
      }
  }


  def chrome_push do
    WebPushEncryption.send_web_push(@push_message, @chrome_subscription)
  end

  def firefox_push do

    WebPushEncryption.send_web_push(@push_message, @firefox_subscription)
  end
end
