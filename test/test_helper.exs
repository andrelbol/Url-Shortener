ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(UrlShortener.Repo, :manual)

Hammox.defmock(UrlServiceMock, for: UrlShortener.Services.UrlService.Behaviour)
