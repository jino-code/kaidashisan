```mermaid
erDiagram
    users ||--|| profiles : ""
    users ||--o{ shopping_list_items : ""

    users {
        uuid id PK
        string email
        string encrypted_password
        timestamp created_at
        timestamp updated_at
    }

    profiles {
        uuid id PK
        string line_group_id
        string line_group_name
        timestamptz created_at
        timestamptz updated_at
    }

    shopping_list_items {
        uuid id PK
        uuid user_id FK
        string name
        boolean is_checked
        timestamptz created_at
        timestamptz updated_at
    }
```