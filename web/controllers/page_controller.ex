defmodule ParallelMailer.PageController do
  use ParallelMailer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
