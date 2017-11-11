.class public final Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/data/CCleanerContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string/jumbo v0, "content://com.piriform.ccleaner.settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "scheduled_cleans"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    .line 70
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "local_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "days"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "analyses"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "results_notification_enabled"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->b:Ljava/util/List;

    return-void
.end method

.method public static a(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/l/c;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 86
    invoke-interface {p0}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->a(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->b:Ljava/util/List;

    sget-object v1, Lcom/piriform/ccleaner/data/CCleanerContentProvider$c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
