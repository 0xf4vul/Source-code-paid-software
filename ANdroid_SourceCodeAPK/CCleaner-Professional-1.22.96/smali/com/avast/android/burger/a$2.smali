.class final Lcom/avast/android/burger/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/burger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avast/android/burger/a;


# direct methods
.method constructor <init>(Lcom/avast/android/burger/a;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v1, v1, Lcom/avast/android/burger/a;->d:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v1}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v1

    .line 1575
    iget-boolean v1, v1, Lcom/avast/android/burger/b;->D:Z

    .line 185
    if-eqz v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v1, v1, Lcom/avast/android/burger/a;->b:Lcom/avast/android/burger/internal/server/b;

    invoke-virtual {v1}, Lcom/avast/android/burger/internal/server/b;->a()I

    move-result v1

    .line 190
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 192
    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v1, v1, Lcom/avast/android/burger/a;->c:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v2, "BurgerJob"

    invoke-interface {v1, v2}, Lcom/avast/android/burger/internal/c/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v1, v1, Lcom/avast/android/burger/a;->c:Lcom/avast/android/burger/internal/c/i;

    iget-object v2, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v2, v2, Lcom/avast/android/burger/a;->d:Lcom/avast/android/burger/internal/config/a;

    .line 195
    invoke-interface {v2}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v2

    .line 2462
    iget-wide v2, v2, Lcom/avast/android/burger/b;->p:J

    .line 195
    iget-object v4, p0, Lcom/avast/android/burger/a$2;->a:Lcom/avast/android/burger/a;

    iget-object v4, v4, Lcom/avast/android/burger/a;->a:Lcom/avast/android/burger/b/b;

    .line 196
    invoke-interface {v4}, Lcom/avast/android/burger/b/b;->h()J

    move-result-wide v4

    .line 194
    invoke-static {v2, v3, v4, v5}, Lcom/avast/android/burger/internal/c/b;->a(JJ)J

    move-result-wide v2

    const-string/jumbo v4, "BurgerJob"

    .line 193
    invoke-interface {v1, v2, v3, v4}, Lcom/avast/android/burger/internal/c/i;->a(JLjava/lang/String;)V

    goto :goto_0
.end method
