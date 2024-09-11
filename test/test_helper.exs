ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(UrlShortener.Repo, :manual)

Hammox.defmock(UrlServiceMock, for: UrlShortener.Services.UrlService.Behaviour)
Hammox.defmock(UrlRepoMock, for: UrlShortener.Repositories.UrlRepo.Behaviour)
