using Documenter
using InvitationLetter
using DocThemeIndigo

indigo = DocThemeIndigo.install(Configurations)

makedocs(;
    modules = [InvitationLetter],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical="https://Roger-luo.github.io/InvitationLetter.jl",
        assets=String[indigo],
    ),
    pages = [
        "Home" => "index.md",
    ],
    repo = "https://github.com/Roger-luo/InvitationLetter.jl",
    sitename = "InvitationLetter.jl",
)

deploydocs(; repo = "https://github.com/Roger-luo/InvitationLetter.jl")
