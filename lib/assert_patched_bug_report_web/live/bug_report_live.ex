defmodule AssertPatchedBugReportWeb.BugReportLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(params, _url, socket) do
    {:noreply, socket |> assign(:page_title, "Bug Report")}
  end

  def render(assigns) do
    ~L"""
    Hello!
    """
  end
end
