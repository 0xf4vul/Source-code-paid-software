.class final Lcom/piriform/ccleaner/rooted/b;
.super Lcom/piriform/ccleaner/rooted/n;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/piriform/ccleaner/rooted/n;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 16
    .line 1023
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "pm disable %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const/16 v1, 0x111

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/rooted/b;->a(Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/b;->b()V

    .line 19
    return v4
.end method
