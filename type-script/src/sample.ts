export const saveToLocalStorage = (key: string, value: string) => {
    localStorage.setItem(key, value);
}

function loadFromLocalStorage(key: string) {
    return localStorage.getItem(key);
}
