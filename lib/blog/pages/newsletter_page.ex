defmodule Blog.NewsletterPage do
  use Tableau.Page,
    layout: Blog.SidebarLayout,
    permalink: "/newsletter",
    title: "Newsletter | Mitchell Hanberg"

  use Blog.Component

  def template(_assigns) do
    temple do
      div class: "prose-lg prose-invert" do
        MDEx.to_html!("""
        # Newsletter

        I like to work, talk, and write about Elixir, compilers, productivity, building awesome teams, and shipping great products.

        **If any of that resonates with you, sign up for my newsletter and follow along!**
        """)

        p class: "text-sm" do
          "I seldom send emails quite, and I will"
          strong class: "font-semibold", do: "never"
          "share your email address with anyone else"
        end

        div class: "border border-white bg-zinc-300 px-4 pt-4 rounded mt-4 max-w-xl" do
          c &subscribe/1
        end
      end
    end
  end
end
