## Example query

```javascript
query {
	activeOrganizations {
    id
    name
    description
    uri
    isActive
		links {
      title
      uri
    }
  }
}
```