use reqwest::Client;
use reqwest::Error;

pub async fn testing() -> Result<String, Error> {
    let client = Client::new();
    let response = client
        .get("https://jsonplaceholder.typicode.com/todos/1")
        .send()
        .await?
        .text()
        .await?;
    Ok(response)
}

// changes
