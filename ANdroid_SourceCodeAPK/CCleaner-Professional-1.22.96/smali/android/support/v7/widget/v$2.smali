.class final Landroid/support/v7/widget/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/v;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/v7/widget/v$2;->b:Landroid/support/v7/widget/v;

    iput-object p2, p0, Landroid/support/v7/widget/v$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/v$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/v$a;

    .line 145
    iget-object v5, p0, Landroid/support/v7/widget/v$2;->b:Landroid/support/v7/widget/v;

    .line 12341
    iget-object v1, v0, Landroid/support/v7/widget/v$a;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 12342
    if-nez v1, :cond_2

    move-object v1, v2

    .line 12343
    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    .line 12344
    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 12345
    :goto_2
    if-eqz v1, :cond_1

    .line 12346
    invoke-static {v1}, Landroid/support/v4/view/x;->s(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v1

    .line 12932
    iget-wide v6, v5, Landroid/support/v7/widget/RecyclerView$e;->l:J

    .line 12346
    invoke-virtual {v1, v6, v7}, Landroid/support/v4/view/af;->a(J)Landroid/support/v4/view/af;

    move-result-object v1

    .line 12348
    iget-object v6, v5, Landroid/support/v7/widget/v;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/support/v7/widget/v$a;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12349
    iget v6, v0, Landroid/support/v7/widget/v$a;->e:I

    iget v7, v0, Landroid/support/v7/widget/v$a;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/af;->b(F)Landroid/support/v4/view/af;

    .line 12350
    iget v6, v0, Landroid/support/v7/widget/v$a;->f:I

    iget v7, v0, Landroid/support/v7/widget/v$a;->d:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/support/v4/view/af;->c(F)Landroid/support/v4/view/af;

    .line 12351
    invoke-virtual {v1, v10}, Landroid/support/v4/view/af;->a(F)Landroid/support/v4/view/af;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/v$7;

    invoke-direct {v7, v5, v0, v1}, Landroid/support/v7/widget/v$7;-><init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$a;Landroid/support/v4/view/af;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/af;->a(Landroid/support/v4/view/aj;)Landroid/support/v4/view/af;

    move-result-object v1

    .line 12367
    invoke-virtual {v1}, Landroid/support/v4/view/af;->b()V

    .line 12369
    :cond_1
    if-eqz v3, :cond_0

    .line 12370
    invoke-static {v3}, Landroid/support/v4/view/x;->s(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v1

    .line 12371
    iget-object v6, v5, Landroid/support/v7/widget/v;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12372
    invoke-virtual {v1, v10}, Landroid/support/v4/view/af;->b(F)Landroid/support/v4/view/af;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/af;->c(F)Landroid/support/v4/view/af;

    move-result-object v6

    .line 13932
    iget-wide v8, v5, Landroid/support/v7/widget/RecyclerView$e;->l:J

    .line 12372
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/af;->a(J)Landroid/support/v4/view/af;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 12373
    invoke-virtual {v6, v7}, Landroid/support/v4/view/af;->a(F)Landroid/support/v4/view/af;

    move-result-object v6

    new-instance v7, Landroid/support/v7/widget/v$8;

    invoke-direct {v7, v5, v0, v1, v3}, Landroid/support/v7/widget/v$8;-><init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$a;Landroid/support/v4/view/af;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/af;->a(Landroid/support/v4/view/aj;)Landroid/support/v4/view/af;

    move-result-object v0

    .line 12388
    invoke-virtual {v0}, Landroid/support/v4/view/af;->b()V

    goto :goto_0

    .line 12342
    :cond_2
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 12344
    goto :goto_2

    .line 147
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/v$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/v$2;->b:Landroid/support/v7/widget/v;

    iget-object v0, v0, Landroid/support/v7/widget/v;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/v$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
