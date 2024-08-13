#!/usr/bin/python3

import praw

def top_ten(subreddit):
    """
    Queries the Reddit API for the top 10 hot posts of a given subreddit
    and prints their titles.

    Args:
        subreddit (str): The name of the subreddit to search.

    Returns:
        None if the subreddit is invalid.
    """
    reddit = praw.Reddit(client_id="[YOUR_CLIENT_ID]",
                        client_secret="[YOUR_CLIENT_SECRET]",
                        user_agent="[YOUR_USER_AGENT]")  # Replace with your Reddit app credentials

    try:
        subreddit = reddit.subreddit(subreddit)
        for post in subreddit.hot(limit=10):
            print(post.title)
    except praw.exceptions.HTTPException as error:
        # Handle potential errors like invalid subreddit or API issues
        print(f"Error: {error}")
        return None
