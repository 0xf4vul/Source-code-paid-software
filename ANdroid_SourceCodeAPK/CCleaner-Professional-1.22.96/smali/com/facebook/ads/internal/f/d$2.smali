.class public final Lcom/facebook/ads/internal/f/d$2;
.super Lcom/facebook/ads/internal/f/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/i",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/d;

.field final synthetic b:Lcom/facebook/ads/internal/f/d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/f/d;Lcom/facebook/ads/internal/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/f/d$2;->b:Lcom/facebook/ads/internal/f/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/i;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$2;->b:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    :try_start_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d$2;->b:Lcom/facebook/ads/internal/f/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/f/d;->b(Lcom/facebook/ads/internal/f/d;)Lcom/facebook/ads/internal/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/f/d$2;->b:Lcom/facebook/ads/internal/f/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/f/d;->a(Lcom/facebook/ads/internal/f/d;)Lcom/facebook/ads/internal/f/h;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/f/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->a()Lcom/facebook/ads/internal/h/h;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/h/h;->c:I

    iget-object v3, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/h/d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/d;->e()D

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/h/d;->f()D

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v8}, Lcom/facebook/ads/internal/h/d;->g()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/internal/f/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v9}, Lcom/facebook/ads/internal/h/d;->h()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/internal/f/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/facebook/ads/internal/f/f$a;->c:Lcom/facebook/ads/internal/f/f$a;

    .line 1000
    iput-object v0, p0, Lcom/facebook/ads/internal/f/f;->c:Lcom/facebook/ads/internal/f/f$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_0
    move-object v0, v10

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/d$2;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
