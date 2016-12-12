defmodule Prizex.RewardController do
  use Prizex.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", rewards: Repo.all Prizex.Reward
  end

  def show(conn, %{"id" => id}) do
    reward = Repo.get Prizex.Reward, id
    render conn, "show.html", reward: reward
  end
end
