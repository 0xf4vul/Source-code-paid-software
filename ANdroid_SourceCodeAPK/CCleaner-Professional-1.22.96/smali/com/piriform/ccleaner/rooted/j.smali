.class final Lcom/piriform/ccleaner/rooted/j;
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

.method static a()Z
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lcom/piriform/ccleaner/rooted/j;

    invoke-direct {v0}, Lcom/piriform/ccleaner/rooted/j;-><init>()V

    .line 1023
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "reboot"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    const/16 v2, 0xeee

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/rooted/j;->a(Ljava/lang/String;I)V

    .line 1017
    invoke-virtual {v0}, Lcom/piriform/ccleaner/rooted/j;->b()V

    .line 1019
    const/4 v0, 0x1

    .line 11
    return v0
.end method
