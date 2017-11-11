.class final Lcom/piriform/ccleaner/o/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/o/h;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/piriform/ccleaner/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/l/c;

.field final synthetic b:Lcom/piriform/ccleaner/o/h;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/h;Lcom/piriform/ccleaner/l/c;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/piriform/ccleaner/o/h$2;->b:Lcom/piriform/ccleaner/o/h;

    iput-object p2, p0, Lcom/piriform/ccleaner/o/h$2;->a:Lcom/piriform/ccleaner/l/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    .line 1093
    iget-object v0, p0, Lcom/piriform/ccleaner/o/h$2;->b:Lcom/piriform/ccleaner/o/h;

    iget-object v1, p0, Lcom/piriform/ccleaner/o/h$2;->a:Lcom/piriform/ccleaner/l/c;

    .line 2122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    sget-object v3, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    .line 2136
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3025
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3026
    const-string/jumbo v5, "_id"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3027
    const-string/jumbo v5, "label"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const-string/jumbo v5, "local_time"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->b()Lcom/piriform/ccleaner/l/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/piriform/ccleaner/l/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const-string/jumbo v5, "enabled"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->d()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3030
    const-string/jumbo v5, "results_notification_enabled"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->f()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3032
    const-string/jumbo v5, "days"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->c()Lcom/piriform/ccleaner/l/d;

    move-result-object v6

    invoke-static {v6}, Lcom/piriform/ccleaner/scheduler/q;->a(Lcom/piriform/ccleaner/l/d;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    const-string/jumbo v5, "analyses"

    invoke-interface {v1}, Lcom/piriform/ccleaner/l/c;->e()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/piriform/ccleaner/scheduler/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2138
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 2123
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4029
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/o/h;->a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1094
    invoke-static {v0}, Lcom/piriform/ccleaner/o/d;->a([Landroid/content/ContentProviderResult;)Lcom/piriform/ccleaner/o/g;

    move-result-object v0

    .line 90
    return-object v0
.end method
