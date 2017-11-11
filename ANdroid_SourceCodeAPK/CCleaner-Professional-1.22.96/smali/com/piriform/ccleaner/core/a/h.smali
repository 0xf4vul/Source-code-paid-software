.class public final Lcom/piriform/ccleaner/core/a/h;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/a/e;
.implements Lcom/piriform/ccleaner/core/a/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/a/h$a;
    }
.end annotation


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/piriform/ccleaner/core/a/h$a;

.field protected final d:Lcom/piriform/ccleaner/n/a;

.field protected e:Lcom/piriform/ccleaner/core/a/k;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Z)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/h;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/h;->d:Lcom/piriform/ccleaner/n/a;

    .line 44
    if-nez p3, :cond_0

    sget-object p3, Lcom/piriform/ccleaner/core/a/h$a;->a:Lcom/piriform/ccleaner/core/a/h$a;

    :cond_0
    iput-object p3, p0, Lcom/piriform/ccleaner/core/a/h;->c:Lcom/piriform/ccleaner/core/a/h$a;

    .line 45
    iput-boolean p5, p0, Lcom/piriform/ccleaner/core/a/h;->f:Z

    .line 46
    iput-object p4, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 1281
    iput-object p0, v0, Lcom/piriform/ccleaner/core/a/k;->a:Lcom/piriform/ccleaner/core/a/e;

    .line 48
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 180
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 181
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 182
    instance-of v3, v0, Lcom/piriform/ccleaner/ui/b/n;

    if-eqz v3, :cond_2

    .line 183
    check-cast v0, Lcom/piriform/ccleaner/ui/b/n;

    .line 18189
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/core/a/h;->getChildrenCount(I)I

    move-result v4

    .line 18198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 18199
    :goto_1
    if-ge v3, v4, :cond_1

    .line 18200
    invoke-virtual {p0, v1, v3}, Lcom/piriform/ccleaner/core/a/h;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v6

    .line 19038
    iget-boolean v7, v6, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 18202
    if-eqz v7, :cond_0

    .line 18203
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18199
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19110
    :cond_1
    iput-object v5, v0, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    .line 19111
    iput v4, v0, Lcom/piriform/ccleaner/ui/b/n;->f:I

    .line 19112
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/b/n;->a()V

    .line 180
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 37321
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    .line 37323
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 38071
    iget-object v4, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 37333
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38075
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 37334
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 37324
    :goto_1
    if-eqz v0, :cond_2

    .line 37325
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 37334
    goto :goto_1

    .line 37327
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37329
    :cond_3
    const/4 v1, -0x1

    .line 284
    goto :goto_2
.end method

.method public final a(I)Lcom/piriform/ccleaner/core/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/k;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lcom/piriform/ccleaner/core/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0, p2, p1}, Lcom/piriform/ccleaner/core/a/k;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;",
            "Lcom/piriform/ccleaner/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/core/a/b;->a(Lcom/piriform/ccleaner/core/a/r;)V

    .line 174
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 18058
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(ILcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 175
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 270
    .line 35060
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/a/h;->g()V

    .line 35061
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->c:Lcom/piriform/ccleaner/core/a/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/h$a;->s_()V

    .line 35062
    if-eqz p2, :cond_0

    .line 35063
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->c:Lcom/piriform/ccleaner/core/a/h$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/core/a/h$a;->a(Lcom/piriform/ccleaner/core/a/b;)V

    .line 35065
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 271
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/core/a/b;Z)V

    .line 272
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/c",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 52
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/v/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/v/b;)V

    .line 215
    return-void
.end method

.method public final a(Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 20276
    iget-object v0, v1, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 21089
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 21090
    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/o;->a(Ljava/util/Comparator;)V

    goto :goto_0

    .line 20277
    :cond_0
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 223
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(Ljava/util/List;Z)V

    .line 158
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 19250
    new-instance v1, Lcom/piriform/ccleaner/v/b$a;

    invoke-direct {v1, p1}, Lcom/piriform/ccleaner/v/b$a;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/v/b;)V

    .line 211
    return-void
.end method

.method public final b(I)Lcom/piriform/ccleaner/core/a/o;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 3308
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/d;->a(I)Lcom/piriform/ccleaner/core/a/o;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 161
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 12164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12165
    iget-object v0, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 13075
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 12167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 12168
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12169
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/core/a/b;

    .line 14038
    iget-boolean v1, v1, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 12170
    if-nez v1, :cond_1

    .line 12171
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 14075
    :cond_2
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 12174
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15071
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 16038
    iget-boolean v1, v1, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 12174
    if-nez v1, :cond_0

    .line 16071
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 12175
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12179
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 12180
    iget-object v3, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;)I

    move-result v0

    .line 12181
    iget-object v3, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 16109
    iget-object v3, v3, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 12183
    :cond_4
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 162
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 230
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/core/a/b;->a(Lcom/piriform/ccleaner/core/a/r;)V

    .line 232
    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    if-ne p2, v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    .line 22062
    invoke-virtual {v0, v5, p1, v1}, Lcom/piriform/ccleaner/core/a/k;->a(ILcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 32059
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 245
    instance-of v0, v0, Lcom/piriform/ccleaner/a/a/d;

    if-eqz v0, :cond_1

    .line 33059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 246
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 33261
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v1

    .line 33262
    sget-object v2, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    if-eq v1, v2, :cond_1

    .line 34226
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/a/c;)Lcom/piriform/ccleaner/ui/b/n;

    move-result-object v1

    .line 33264
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/b/n;->a(Lcom/piriform/ccleaner/core/i;)V

    .line 35056
    :cond_1
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 250
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 22312
    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/a/c;)Lcom/piriform/ccleaner/ui/b/n;

    move-result-object v1

    .line 22313
    if-nez v1, :cond_3

    .line 22314
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/k;->d:Lcom/piriform/ccleaner/core/a/f;

    invoke-interface {v1, p2}, Lcom/piriform/ccleaner/core/a/f;->a(Lcom/piriform/ccleaner/a/c;)Lcom/piriform/ccleaner/ui/b/n;

    move-result-object v1

    .line 23062
    invoke-virtual {v0, v5, v1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(ILcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 23125
    iget-object v0, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;)I

    move-result v0

    .line 23126
    if-ne v0, v5, :cond_4

    .line 23136
    invoke-static {}, Lcom/piriform/ccleaner/core/a/k;->a()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to addItem. Invalid GroupIndex. \nHeaderview ItemViewType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24050
    iget-object v4, v1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 23138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nItem ItemViewType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25050
    iget-object v4, p1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 23139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 23140
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23136
    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 23129
    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    .line 25062
    invoke-virtual {v2, v5, v1, v0}, Lcom/piriform/ccleaner/core/a/k;->a(ILcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 23130
    iget-object v0, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;)I

    move-result v0

    .line 23081
    :cond_4
    if-eq v0, v5, :cond_5

    .line 23082
    iget-object v3, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 26049
    iget-object v3, v3, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 27042
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23083
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 238
    :goto_1
    invoke-direct {p0}, Lcom/piriform/ccleaner/core/a/h;->g()V

    .line 29059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 240
    instance-of v0, v0, Lcom/piriform/ccleaner/f/j;

    if-eqz v0, :cond_0

    .line 30059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 241
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 30253
    check-cast v1, Lcom/piriform/ccleaner/ui/b/n;

    .line 30254
    new-instance v2, Lcom/piriform/ccleaner/core/i;

    invoke-direct {v2}, Lcom/piriform/ccleaner/core/i;-><init>()V

    .line 31231
    iget-wide v4, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 30255
    invoke-virtual {v2, v4, v5}, Lcom/piriform/ccleaner/core/i;->a(J)V

    .line 30256
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/b/n;->a(Lcom/piriform/ccleaner/core/i;)V

    goto/16 :goto_0

    .line 27093
    :cond_5
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/k;->b()Ljava/lang/String;

    .line 27094
    invoke-static {}, Lcom/piriform/ccleaner/core/a/k;->a()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to recover from missing space consuming resource. \nHeaderview ItemViewType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28050
    iget-object v4, v1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 27096
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\nItem ItemViewType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 29050
    iget-object v4, p1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 27097
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 27098
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27094
    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 5

    .prologue
    .line 218
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 19271
    iget-object v2, v1, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 20071
    if-eqz p1, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/core/a/o;->a:Ljava/util/Comparator;

    .line 20072
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 20073
    :goto_0
    new-instance v3, Lcom/piriform/ccleaner/core/a/d$1;

    invoke-direct {v3, v2, p1}, Lcom/piriform/ccleaner/core/a/d$1;-><init>(Lcom/piriform/ccleaner/core/a/d;Z)V

    .line 20080
    iget-object v4, v2, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20081
    iget-object v0, v2, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 20082
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/core/a/o;->a(Ljava/util/Comparator;)V

    goto :goto_1

    .line 20072
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/core/a/o;->a:Ljava/util/Comparator;

    goto :goto_0

    .line 19272
    :cond_1
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 219
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 16153
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/k;->d()Ljava/util/List;

    move-result-object v0

    .line 16154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 17059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 16157
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    return-object v1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/k;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/h;->notifyDataSetChanged()V

    .line 277
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 36053
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 37024
    iget-object v2, v1, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 37025
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 36054
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 281
    return-void
.end method

.method public final synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/core/a/h;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    .prologue
    .line 99
    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/core/a/h;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 7050
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 8038
    iget v0, v0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 9054
    invoke-static {}, Lcom/piriform/ccleaner/core/a/g;->a()I

    move-result v0

    .line 143
    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/h;->b:Landroid/content/Context;

    .line 6230
    invoke-virtual {v0, p2, p1}, Lcom/piriform/ccleaner/core/a/k;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v2

    .line 6231
    invoke-virtual {v2, p4, p5, v1}, Lcom/piriform/ccleaner/core/a/b;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 6300
    iget-boolean v2, v0, Lcom/piriform/ccleaner/core/a/k;->c:Z

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/piriform/ccleaner/ui/view/b;

    if-eqz v2, :cond_0

    .line 6301
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/d;->a(I)Lcom/piriform/ccleaner/core/a/o;

    move-result-object v0

    .line 6302
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    move-object v0, v1

    .line 6303
    check-cast v0, Lcom/piriform/ccleaner/ui/view/b;

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/ui/view/b;->setDividerVisible(Z)V

    .line 128
    :cond_0
    return-object v1

    .line 6302
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 2191
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 3054
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/o;->a()I

    move-result v0

    .line 75
    return v0
.end method

.method public final synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    .line 2187
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->a()I

    move-result v0

    .line 70
    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupType(I)I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/core/a/h;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    .line 11050
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 12038
    iget v0, v0, Lcom/piriform/ccleaner/core/a/g;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getGroupTypeCount()I
    .locals 1

    .prologue
    .line 10054
    invoke-static {}, Lcom/piriform/ccleaner/core/a/g;->a()I

    move-result v0

    .line 148
    return v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/h;->f:Z

    if-eqz v0, :cond_1

    .line 4117
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/h;->b:Landroid/content/Context;

    const v1, 0x7f03005a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/h;->e:Lcom/piriform/ccleaner/core/a/k;

    iget-object v3, p0, Lcom/piriform/ccleaner/core/a/h;->b:Landroid/content/Context;

    .line 4212
    invoke-virtual {v2, p1}, Lcom/piriform/ccleaner/core/a/k;->a(I)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v1

    .line 4213
    instance-of v0, v1, Lcom/piriform/ccleaner/ui/b/n;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 4214
    check-cast v0, Lcom/piriform/ccleaner/ui/b/n;

    .line 5142
    iput-boolean p2, v0, Lcom/piriform/ccleaner/ui/b/n;->e:Z

    .line 4218
    :cond_2
    invoke-virtual {v1, p3, p4, v3}, Lcom/piriform/ccleaner/core/a/b;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 5289
    iget-boolean v0, v2, Lcom/piriform/ccleaner/core/a/k;->c:Z

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/piriform/ccleaner/ui/view/b;

    if-eqz v0, :cond_0

    .line 6187
    iget-object v0, v2, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->a()I

    move-result v0

    .line 5290
    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    move-object v0, v1

    .line 5291
    check-cast v0, Lcom/piriform/ccleaner/ui/view/b;

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/ui/view/b;->setDividerVisible(Z)V

    goto :goto_0

    .line 5290
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method
