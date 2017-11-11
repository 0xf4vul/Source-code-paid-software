.class public final Lcom/piriform/ccleaner/rooted/f;
.super Lcom/piriform/ccleaner/rooted/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/piriform/ccleaner/rooted/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 23
    .line 1028
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "PATH_CACHE=\"%s/%s/cache\"; if [ -d \"$PATH_CACHE\" ]; then cd $PATH_CACHE; rm -rf -- *; fi;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const/16 v1, 0x333

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/rooted/f;->a(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/f;->b()V

    .line 25
    return-void
.end method
