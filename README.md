**Docker - Phoenix 1.2.1**
========================

Our docker container for our Phoenix projects (use it at will). Based on the
Dockerfiles of [marcelocg][marcelocg] and [appcues][appcues], salute to the
true heroes.


Packages Installed
------------------

| Name | Comments |
| ---- | -------- |
| apt-utils | Is it necessary? |
| build-essential | |
| brunch | |
| git |  |
| elixir |  |
| erlang-dev | |
| erlang-dialyzer |  |
| erlang-parsetools |  |
| erlang-solutions_1.0 | .deb downloaded from [here][erlang-solutions-deb] |
| make |  |
| node | Version > 6.0.0 |
| phoenix | Version 1.2.1, downloaded from [here][phoenix-ez] |
| sudo |  |


Deps considered
---------------

| Package | URLS |
| ------- | ---- |
| Comeonin | [![GitHub][github-logo]][comeonin-github] [![Hex][hex-logo]][comeonin-hex] |
| Phoenix | [![GitHub][github-logo]][phoenix-github] [![Documentation][hex-logo]][phoenix-hex] [![Documentation][phoenix-logo]][phoenix-site] |



Developed and Owned by
--------


[![StackShare][stack-shield]][tech]


[![GRVTY][grvty-logo]](http://grvty.digital)

[appcues]: https://github.com/appcues/docker-elixir-dev
[comeonin-github]: https://github.com/riverrun/comeonin
[comeonin-hex]: https://hexdocs.pm/comeonin/api-reference.html
[marcelocg]: https://github.com/marcelocg/phoenix-docker
[phoenix-hex]: https://hexdocs.pm/phoenix/Phoenix.html
[phoenix-github]: https://github.com/phoenixframework/phoenix
[phoenix-site]: http://www.phoenixframework.org/

[erlang-solutions-deb]: http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
[phoenix-ez]: https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.2.1.ez

[github-logo]: https://help.github.com/assets/images/site/favicon.ico
[grvty-logo]: http://grvty.digital/images/logos/repos-logo-1.png?raw=true "GRVTY"
[hex-logo]: https://hexdocs.pm/favicon.png
[phoenix-logo]: https://files.readme.io/o2869zfZTW2e3N7GIExs_favicon.ico

[tech]: http://stackshare.io/grvty/grvty
[stack-shield]: https://img.shields.io/badge/-Technology-blue.svg?style=flat-square&colorA=808080&colorB=3636e2&logoWidth=72&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAEgAAAAOCAYAAACM7Fo2AAAABGdBTUEAALGPC%2FxhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QA%2FwD%2FAP%2BgvaeTAAAAB3RJTUUH4QINDwEHFUUK5QAAA%2BRJREFUSMfdlk1oXUUUx39z73t5mZeU2KhEN6LiZ0vdtCsXxaIgFGxoqK4qKP1aKES7qAWDXVd0oYuqkIogVhGVVkGrpGos6CJIIO%2B%2BplIMFpG22Da2gSSN973jYs4k4%2B19XwiCHrjcmfMxZ%2BZ%2FPmYMDUgS64eGZpQixEBsMGvm%2Bb9R7uGlWgZjQASQCFnWNgiybGeog5OatQvN%2FMSBr7p%2BIUX6kaNj1D7k%2BfVSnRdyfHp9o%2FJaZs0sr0OARCI1fgI4B9wKXAK6gB7gPNALHAciIlPPySCjXz2HLzSnKGPnbfyeW9k3OqvQnv%2FGAAFIYv0i9wJbgd%2BAGoaBeo1fanXuLvYXXkkv%2FylRbCTKLzEP0FZgCzALvA1MZcDbDGzCZcYi8IHqANwGPAe8E%2FCeAgaAg8AqYAQoAX9oAG8GPgK%2BBDYATwOjwKTa3wE8D3wKjOUEozlJtYwkFklsrP89kthtkthhSexQOmWHU%2Bm9%2FcKELXwx3s341za7hAc%2BBo4q0N8A0zreovKS%2Fg8p%2FyTws44fVVkfMK%2BgAfQD14B3dT6ga0%2Bq3VkgAXYE%2Br8CPwHdyjsBLAF36jws7zYAmr7FA%2BS%2FPknsgVrFDslMecePx7t3r7sn2rlvZ4GNG6LIXJ%2BHvic8q5t%2BJJBtAm7QcVH%2Fb%2BHK1680DYwHNq9qhCNcyQuwPuNrtfL3B3x%2F8PUqexF4UseDQRA7J6mWkUppJYuqdnB%2Bwu4S6dn%2B0IPxy4B0FVnTIALe6bdAJeC%2FBnwMfAg8HPBHgSsBQKeA7wL5A3qobcAnCiCq733fpDojGfA9gAdUXgMO%2FyNwlkFKLFItszhpjUgfcsa%2B9NkbpcfKlouAGMPRFgCNAacD%2Fgu4viDAroDvS2wMmMCl%2F%2BbMAb8HZoAFYDiQeVD7WcmS0C4EsgJcxmUbtHrC0Kr2TMTslTqLvXrT3lUaff29dN%2F8AjdGEakIg8AQLv3DaHjHR3BN%2FnGdHwSqOl4KY6H%2FBFiLK6%2FPMwcYxTXXOVwGgsuG7Bp5zdY34bO423eWDm6ydsgDeZ8xzBnn7Jo6SADfpfMiclj1KsAFXAYIsCejM6fjQZU%2Fo%2FOwxywB7%2Bs8zvj0GTSSsQt1vwLONNnrddRWDa7qga4ipClHgPvFAVTERXBAATyh64VRMcAx3C0T4cprL67sTgK%2Fq95VXGlN4frLjAZgipXH3gKuNx1ToEMfqN55XN87p7xshswCP%2FD3vtiU2kHRp%2Bc64E3daGgX46K%2FnZVGK8H6eQ%2FFdvzl7bWjR96%2FTc36lQeiEcW4lPdXbyGznud5KpCf3XGLfRRayGM6vLnaqsM2QeokS%2F4z9Be%2BeznLuXK5hgAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxNy0wMi0xM1QxNTowMTowNy0wNTowMI64DDUAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMTctMDItMTNUMTU6MDE6MDctMDU6MDD%2F5bSJAAAAAElFTkSuQmCC
