.class final Lcom/google/android/gms/internal/iw$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;Lcom/google/android/gms/internal/iu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iu;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/gms/internal/iw;

.field final synthetic d:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;Ljava/util/List;Lcom/google/android/gms/internal/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$16;->a:Lcom/google/android/gms/internal/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/iw$16;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/iw$16;->c:Lcom/google/android/gms/internal/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    const-string/jumbo v2, "Transaction"

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$16;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/lang/String;Lcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    sget v1, Lcom/google/android/gms/internal/iw$b;->d:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-static {v1}, Lcom/google/android/gms/internal/iw;->f(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-static {v5}, Lcom/google/android/gms/internal/iw;->g(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/mr;

    move-result-object v6

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->g(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$16;->c:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/firebase/database/d;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/lm;)Lcom/google/firebase/database/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iw$16$1;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/iw$16$1;-><init>(Lcom/google/android/gms/internal/iw$a;Lcom/google/firebase/database/a;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    new-instance v2, Lcom/google/android/gms/internal/jk;

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->i(Lcom/google/android/gms/internal/iw$a;)Lcom/google/firebase/database/n;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    invoke-direct {v2, v3, v5, v0}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/ip;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-static {v1}, Lcom/google/android/gms/internal/iw;->h(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/kg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$16;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/kg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw;->i(Lcom/google/android/gms/internal/iw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->c:Lcom/google/android/gms/internal/iw;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/iw;->b(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1000
    :cond_1
    iget v0, v1, Lcom/google/firebase/database/b;->a:I

    .line 0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/iw$b;->e:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/google/android/gms/internal/iw$b;->f:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    goto :goto_2

    :cond_2
    sget v2, Lcom/google/android/gms/internal/iw$b;->b:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    sget v3, Lcom/google/android/gms/internal/iw$b;->f:I

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;Lcom/google/firebase/database/b;)Lcom/google/firebase/database/b;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/iw$16;->d:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$16;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    :cond_5
    return-void
.end method
