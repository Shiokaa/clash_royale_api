export const fetchCards = async (): Promise<any[]> => {

  const API_URL = 'http://localhost:3000/api/v1/cards';

  try {
    console.log(`Fetching card data from ${API_URL}...`);
    const response = await fetch(API_URL);
    if (!response.ok) {
      throw new Error(`Network response was not ok: ${response.statusText}`);
    }
    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Failed to fetch cards:", error);
    throw error;
  }
};
