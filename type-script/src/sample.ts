export class LocalStorage {
    setItem(key: string, value: string) {
        localStorage.setItem(key, value);
    }
    getItem(key: string) {
        return localStorage.getItem(key);
    }
}

export const printHello = () => {
    console.log('Hello');
}

export function printWorld() {
    console.log('World');
}
