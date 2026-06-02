import './item-list.scss'

interface ItemListProps {
    readonly title: string
    readonly action?: React.ReactNode
    readonly children: React.ReactNode
}

export const ItemList = ({ title, action, children }: ItemListProps) => (
    <section>
        <div className="item-list__header">
            <h3>{title}</h3>
            {action}
        </div>
        <div>{children}</div>
    </section>
)
