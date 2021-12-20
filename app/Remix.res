@val external process: 'a = "process"

module RemixBrowser = {
  @module("remix") @react.component external make: unit => React.element = "RemixBrowser"
}

type entryContext

module RemixServer = {
  @module("remix") @react.component
  external make: (~context: entryContext, ~url: string) => React.element = "RemixServer"
}

module Meta = {
  @module("remix") @react.component
  external make: unit => React.element = "Meta"
}

module Links = {
  @module("remix") @react.component
  external make: unit => React.element = "Links"
}

module Outlet = {
  @module("remix") @react.component
  external make: (~context: 'a=?) => React.element = "Outlet"
}

module ScrollRestoration = {
  @module("remix") @react.component
  external make: unit => React.element = "ScrollRestoration"
}

module Scripts = {
  @module("remix") @react.component
  external make: unit => React.element = "Scripts"
}

module LiveReload = {
  @module("remix") @react.component
  external make: (~port: int=?) => React.element = "LiveReload"
}

module Link = {
  @module("remix") @react.component
  external make: (
    ~prefetch: [#intent | #render | #none]=?,
    ~to: string,
    ~reloadDocument: bool=?,
    ~replace: bool=?,
    ~state: 'a=?,
    ~children: React.element,
  ) => React.element = "Link"
}

module Form = {
  @module("remix") @react.component
  external make: (
    ~method: [#get | #post | #put | #patch | #delete]=?,
    ~action: string=?,
    ~encType: string=?,
    ~reloadDocument: bool=?,
    ~replace: bool=?,
    ~onSubmit: @uncurry ReactEvent.Form.t => unit=?,
  ) => React.element = "Form"
}

@module("remix") external json: {..} => Webapi.Fetch.Response.t = "json"

@module("remix") external redirect: string => Webapi.Fetch.Response.t = "redirect"
