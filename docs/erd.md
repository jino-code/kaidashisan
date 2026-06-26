```mermaid
erDiagram
    users ||--|| profiles : ""
    profiles }o--|| chatrooms : ""
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
        uuid chatroom_id FK
        timestamp created_at
        timestamp updated_at
    }

    chatrooms {
        uuid id PK
        string group_id
        string name
        timestamp created_at
        timestamp updated_at
    }

    shopping_list_items {
        uuid id PK
        uuid user_id FK
        string name
        boolean is_checked
        timestamp created_at
        timestamp updated_at
    }
```