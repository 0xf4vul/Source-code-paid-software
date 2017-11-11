.class public final Lcom/piriform/ccleaner/ui/fragment/y;
.super Landroid/support/v4/app/h;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/t$a;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/piriform/ccleaner/ui/fragment/v$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/h;",
        "Landroid/support/v4/app/t$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/settings/c;",
        ">;>;",
        "Landroid/view/ActionMode$Callback;",
        "Lcom/piriform/ccleaner/ui/fragment/v$a;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field private b:Lcom/piriform/ccleaner/ui/fragment/x;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/piriform/ccleaner/ui/fragment/v;

.field private e:Landroid/widget/ViewSwitcher;

.field private f:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    return-void
.end method

.method public static I()Lcom/piriform/ccleaner/ui/fragment/y;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/y;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/y;-><init>()V

    return-object v0
.end method

.method private J()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/y;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/fragment/y;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->J()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/fragment/y;)Lcom/piriform/ccleaner/ui/fragment/v;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/fragment/y;)Lcom/piriform/ccleaner/ui/fragment/x;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/ui/fragment/y;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->K()V

    return-void
.end method

.method static synthetic f(Lcom/piriform/ccleaner/ui/fragment/y;)V
    .locals 1

    .prologue
    .line 36
    .line 6122
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    if-eqz v0, :cond_0

    .line 6123
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/fragment/x;->f()V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final D_()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/h;->D_()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    .line 119
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f030047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/app/Activity;)V

    .line 108
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/fragment/x;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Activity must implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/piriform/ccleaner/ui/fragment/x;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/fragment/x;

    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    .line 113
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/fragment/y;)V

    .line 57
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/h;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1016
    const v0, 0x7f1000e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->e:Landroid/widget/ViewSwitcher;

    .line 2016
    const v0, 0x7f1000e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/y$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/fragment/y$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3016
    const v0, 0x7f1000e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/Button;

    .line 83
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/y$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/fragment/y$2;-><init>(Lcom/piriform/ccleaner/ui/fragment/y;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3095
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->e:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3150
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->e:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 3098
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 3099
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-direct {v1, v0, p0}, Lcom/piriform/ccleaner/ui/fragment/v;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/fragment/v$a;)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    .line 3100
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3101
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->l()Landroid/support/v4/app/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/t;->a(ILandroid/support/v4/app/t$a;)Landroid/support/v4/b/d;

    .line 92
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 36
    check-cast p1, Ljava/util/List;

    .line 5154
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->e:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 5138
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/v;->clear()V

    .line 5139
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/v;->addAll(Ljava/util/Collection;)V

    .line 5140
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/v;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public final b()Landroid/support/v4/b/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/b/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/piriform/ccleaner/ui/c/a;

    new-instance v3, Lcom/piriform/ccleaner/settings/b;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/fragment/y;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v1, v4}, Lcom/piriform/ccleaner/settings/b;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V

    invoke-direct {v2, v0, v3}, Lcom/piriform/ccleaner/ui/c/a;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/settings/b;)V

    return-object v2
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/v;->clear()V

    .line 146
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/v;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method public final c_(I)V
    .locals 1

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->K()V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3174
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100182

    if-ne v1, v2, :cond_2

    .line 205
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    .line 4151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4152
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/v;->getCount()I

    move-result v3

    .line 4153
    :goto_0
    if-ge v0, v3, :cond_1

    .line 4154
    iget-object v4, v1, Lcom/piriform/ccleaner/ui/fragment/v;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4155
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/v;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->b:Lcom/piriform/ccleaner/ui/fragment/x;

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/ui/fragment/x;->a(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_2
    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    .line 4106
    iput-boolean v2, v0, Lcom/piriform/ccleaner/ui/fragment/v;->c:Z

    .line 187
    return v2
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    .line 5110
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/piriform/ccleaner/ui/fragment/v;->c:Z

    .line 216
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/v;->a()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/y;->f:Landroid/view/ActionMode;

    .line 218
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/y;->g()Landroid/support/v4/app/i;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/y;->d:Lcom/piriform/ccleaner/ui/fragment/v;

    .line 4147
    iget v1, v1, Lcom/piriform/ccleaner/ui/fragment/v;->b:I

    .line 196
    const v2, 0x7f090015

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 196
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    return v5
.end method
