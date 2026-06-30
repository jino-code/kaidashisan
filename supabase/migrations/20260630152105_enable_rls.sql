-- profiles
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

CREATE POLICY "users can read own profile" ON profiles
  FOR SELECT
  USING (id = auth.uid());

CREATE POLICY "users can insert own profile" ON profiles
  FOR INSERT
  WITH CHECK (id = auth.uid());

CREATE POLICY "users can update own profile" ON profiles
  FOR UPDATE
  USING (id = auth.uid())
  WITH CHECK (id = auth.uid());

-- shopping_list_items
ALTER TABLE shopping_list_items ENABLE ROW LEVEL SECURITY;

CREATE POLICY "users can read own items" ON shopping_list_items
  FOR SELECT
  USING (user_id = auth.uid());

CREATE POLICY "users can insert own items" ON shopping_list_items
  FOR INSERT
  WITH CHECK (user_id = auth.uid());

CREATE POLICY "users can update own items" ON shopping_list_items
  FOR UPDATE
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

CREATE POLICY "users can delete own items" ON shopping_list_items
  FOR DELETE
  USING (user_id = auth.uid());