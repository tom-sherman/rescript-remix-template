external castHeadersToInit: Webapi.Fetch.Headers.t => Webapi.Fetch.HeadersInit.t = "%identity"

let default = (request, responseStatusCode, responseHeaders, remixContext) => {
  open Webapi

  let markup = ReactDOMServer.renderToString(
    <Remix.RemixServer context={remixContext} url={request->Fetch.Request.url} />,
  )

  responseHeaders->Fetch.Headers.set("Content-Type", "text/html")

  Fetch.Response.makeWithInit(
    "<!DOCTYPE html>" ++ markup,
    Fetch.ResponseInit.make(
      ~status=responseStatusCode,
      ~headers=responseHeaders->castHeadersToInit,
      (),
    ),
  )
}
