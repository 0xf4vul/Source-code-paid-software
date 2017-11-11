.class public final Lcom/piriform/ccleaner/ui/fragment/q;
.super Lcom/piriform/ccleaner/ui/fragment/aa;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/aa",
        "<",
        "Lcom/piriform/ccleaner/a/a/v;",
        ">;",
        "Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;"
    }
.end annotation


# instance fields
.field private ad:Lcom/piriform/ccleaner/t/q;

.field private ae:Lcom/piriform/ccleaner/ui/fragment/an;

.field private af:Lcom/piriform/ccleaner/ui/activity/c;

.field private ag:Lcom/piriform/ccleaner/a/a/v;

.field private ah:I

.field private ai:J

.field private final aj:Lcom/piriform/ccleaner/t/z;

.field b:Lcom/piriform/ccleaner/a/b;

.field c:Ljava/util/concurrent/Executor;

.field d:Lcom/piriform/ccleaner/t/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;-><init>()V

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/q$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/q$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/q;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->aj:Lcom/piriform/ccleaner/t/z;

    return-void
.end method

.method private O()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 175
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ag:Lcom/piriform/ccleaner/a/a/v;

    .line 3123
    iget-object v0, v0, Lcom/piriform/ccleaner/a/a/v;->k:Ljava/util/List;

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3146
    iput v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ah:I

    .line 177
    sget-object v1, Lcom/piriform/ccleaner/core/data/j;->b:Lcom/piriform/ccleaner/core/data/j;

    const v2, 0x7f08012f

    invoke-direct {p0, v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/j;I)V

    .line 178
    sget-object v1, Lcom/piriform/ccleaner/core/data/j;->c:Lcom/piriform/ccleaner/core/data/j;

    const v2, 0x7f080127

    invoke-direct {p0, v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/j;I)V

    .line 179
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->s_()V

    .line 181
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/q;J)J
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ai:J

    return-wide p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/q;Lcom/piriform/ccleaner/a/a/v;)Lcom/piriform/ccleaner/a/a/v;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ag:Lcom/piriform/ccleaner/a/a/v;

    return-object p1
.end method

.method private a(Lcom/piriform/ccleaner/ui/activity/c;)V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->af:Lcom/piriform/ccleaner/ui/activity/c;

    .line 225
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/q$2;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/activity/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->f:Landroid/widget/TextView;

    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/q;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/q;->aa:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 229
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->g:Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ab:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SafeViewFlipper;->setDisplayedChild(I)V

    .line 233
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->E_()V

    .line 235
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->invalidateOptionsMenu()V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ae:Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    .line 168
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->O()V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/q;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->O()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/piriform/ccleaner/core/data/j;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;",
            "Lcom/piriform/ccleaner/core/data/j;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 185
    .line 3201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 4057
    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/i;->a:Lcom/piriform/ccleaner/core/data/j;

    .line 3204
    if-ne v3, p2, :cond_0

    .line 3205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ae:Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Ljava/util/List;)V

    .line 188
    new-instance v0, Lcom/piriform/ccleaner/ui/b/p;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/b/p;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    new-instance v2, Lcom/piriform/ccleaner/ui/b/v;

    .line 190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/piriform/ccleaner/ui/b/v;-><init>(Ljava/lang/Integer;I)V

    sget-object v3, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 194
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/b/p;->a(Ljava/lang/Object;)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/b/w;

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 4103
    iput-boolean v2, v0, Lcom/piriform/ccleaner/ui/b/w;->d:Z

    .line 196
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    sget-object v3, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v0, v3}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_1

    .line 198
    :cond_2
    return-void
.end method


# virtual methods
.method protected final E_()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->E_()V

    .line 9289
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9292
    if-nez v0, :cond_0

    .line 9293
    const/4 v0, 0x1

    .line 9298
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 9299
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method protected final I()Lcom/piriform/ccleaner/a/h;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    return-object v0
.end method

.method protected final J()V
    .locals 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ag:Lcom/piriform/ccleaner/a/a/v;

    .line 4142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 4143
    iget-object v4, v2, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 5061
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/i;->b:Ljava/lang/String;

    .line 4143
    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/core/b/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4145
    :cond_0
    iget-object v0, v2, Lcom/piriform/ccleaner/a/a/v;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4146
    iget-object v0, v2, Lcom/piriform/ccleaner/a/a/v;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ac:Lcom/piriform/ccleaner/core/a/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/core/a/h;->a(Ljava/util/List;Z)V

    .line 255
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->T()V

    .line 259
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->O()V

    .line 260
    return-void
.end method

.method protected final N()Lcom/piriform/ccleaner/core/a/h;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    new-instance v4, Lcom/piriform/ccleaner/core/a/k;

    new-instance v0, Lcom/piriform/ccleaner/core/a/n;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/n;-><init>()V

    invoke-direct {v4, v0}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    .line 1285
    iput-boolean v5, v4, Lcom/piriform/ccleaner/core/a/k;->c:Z

    .line 153
    new-instance v0, Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->g()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {v2}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v2

    .line 2133
    iget-object v2, v2, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    move-object v3, p0

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/core/a/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 86
    new-instance v0, Lcom/piriform/ccleaner/t/q;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/q;->aj:Lcom/piriform/ccleaner/t/z;

    sget-object v3, Lcom/piriform/ccleaner/t/q$a;->a:Lcom/piriform/ccleaner/t/q$a;

    invoke-direct {v0, v2, v3}, Lcom/piriform/ccleaner/t/q;-><init>(Lcom/piriform/ccleaner/t/z;Lcom/piriform/ccleaner/t/q$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ad:Lcom/piriform/ccleaner/t/q;

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->h:Landroid/widget/ExpandableListView;

    check-cast v0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->setLocker(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$b;)V

    .line 90
    return-object v1
.end method

.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/fragment/q;)V

    .line 78
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/an;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/an;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ae:Lcom/piriform/ccleaner/ui/fragment/an;

    .line 79
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->k()V

    .line 80
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/Menu;)V

    .line 124
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->af:Lcom/piriform/ccleaner/ui/activity/c;

    sget-object v1, Lcom/piriform/ccleaner/ui/activity/c;->a:Lcom/piriform/ccleaner/ui/activity/c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 125
    :goto_0
    const v1, 0x7f10017e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    :cond_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    return-void
.end method

.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 3

    .prologue
    .line 44
    check-cast p1, Lcom/piriform/ccleaner/a/a/v;

    .line 10158
    if-nez p1, :cond_0

    .line 10213
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/c;->b:Lcom/piriform/ccleaner/ui/activity/c;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/activity/c;)V

    .line 10214
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/q$a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/ui/fragment/q$a;-><init>(Lcom/piriform/ccleaner/ui/fragment/q;Landroid/content/Context;)V

    .line 10215
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->c:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/q$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10159
    :goto_0
    return-void

    .line 10161
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ag:Lcom/piriform/ccleaner/a/a/v;

    .line 10162
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->O()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Z)V
    .locals 3

    .prologue
    .line 264
    check-cast p1, Lcom/piriform/ccleaner/ui/b/w;

    .line 6059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 265
    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 6085
    iput-boolean p2, v0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 268
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->g()Landroid/support/v4/app/i;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    new-instance v2, Lcom/piriform/ccleaner/n/b;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/n/b;-><init>(Landroid/content/Context;)V

    .line 7061
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/i;->b:Ljava/lang/String;

    .line 274
    if-eqz p2, :cond_1

    .line 8031
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/piriform/ccleaner/n/b;->a(Ljava/lang/String;Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 9027
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/piriform/ccleaner/n/b;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/aa;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->a:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    goto :goto_0

    .line 138
    :pswitch_1
    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->b:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f10017f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final bridge synthetic b(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->q()V

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->d:Lcom/piriform/ccleaner/t/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ad:Lcom/piriform/ccleaner/t/q;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/t/p;->a(Lcom/piriform/ccleaner/t/o;)V

    .line 107
    return-void
.end method

.method public final r()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->d:Lcom/piriform/ccleaner/t/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ad:Lcom/piriform/ccleaner/t/q;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/t/p;->b(Lcom/piriform/ccleaner/t/o;)V

    .line 112
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/fragment/aa;->r()V

    .line 113
    return-void
.end method

.method protected final r_()Ljava/lang/String;
    .locals 7

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ai:J

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/q;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002c

    iget v3, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ah:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/piriform/ccleaner/ui/fragment/q;->ah:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final u_()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
