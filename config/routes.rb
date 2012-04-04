Cv::Application.routes.draw do
  scope "(:locale)", locale: /pl|en/ do
    root to: "application#cv"
    match "cv" => "application#cv"
  end
  root to: "application#cv"
end
