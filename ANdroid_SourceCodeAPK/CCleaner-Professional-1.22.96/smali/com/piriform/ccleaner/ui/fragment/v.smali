.class public final Lcom/piriform/ccleaner/ui/fragment/v;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/piriform/ccleaner/settings/c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/util/SparseBooleanArray;

.field b:I

.field c:Z

.field private final d:Lcom/piriform/ccleaner/ui/fragment/v$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/fragment/v$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    .line 26
    iput v1, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    .line 31
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/v;->d:Lcom/piriform/ccleaner/ui/fragment/v$a;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    .line 143
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 119
    if-ne p2, v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 123
    :cond_0
    if-eqz p2, :cond_1

    .line 124
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->notifyDataSetChanged()V

    .line 132
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->d:Lcom/piriform/ccleaner/ui/fragment/v$a;

    iget v1, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/v$a;->c_(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    goto :goto_1
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public final clear()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 165
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->a()V

    .line 166
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 39
    if-nez p2, :cond_2

    .line 40
    new-instance p2, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 2103
    :goto_0
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/c;->c:Lcom/piriform/ccleaner/settings/c$b;

    .line 3061
    iget v1, v1, Lcom/piriform/ccleaner/settings/c$b;->c:I

    .line 45
    invoke-virtual {p2, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 47
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p2, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 50
    new-instance v2, Ljava/io/File;

    .line 3099
    iget-object v3, v0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 50
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080061

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 4067
    invoke-virtual {p2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    .line 4068
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4114
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 4069
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4070
    new-instance v3, Lcom/piriform/ccleaner/ui/fragment/v$1;

    invoke-direct {v3, p0, p1}, Lcom/piriform/ccleaner/ui/fragment/v$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/v;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5115
    iget-object v2, v0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    .line 5081
    if-eqz v2, :cond_0

    .line 5082
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800b2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5083
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 6125
    :cond_0
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 6089
    if-eqz v0, :cond_1

    .line 6090
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/v;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7039
    iget v0, v0, Lcom/piriform/ccleaner/settings/c$a;->d:I

    .line 6090
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 61
    :cond_1
    const/high16 v0, 0x60000

    invoke-virtual {p2, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setDescendantFocusability(I)V

    .line 63
    return-object p2

    .line 42
    :cond_2
    check-cast p2, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/v;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 102
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/v;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic remove(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 7170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
