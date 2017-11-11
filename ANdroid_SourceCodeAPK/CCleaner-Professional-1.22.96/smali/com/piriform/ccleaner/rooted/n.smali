.class Lcom/piriform/ccleaner/rooted/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/rooted/m;

.field private final b:Lb/a/a/b$c;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/rooted/m;

    invoke-direct {v0}, Lcom/piriform/ccleaner/rooted/m;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/n;->a:Lcom/piriform/ccleaner/rooted/m;

    .line 1028
    invoke-static {}, Lb/a/a/a;->a()V

    .line 1029
    invoke-static {}, Lb/a/a/a;->b()V

    .line 1030
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/n;->a:Lcom/piriform/ccleaner/rooted/m;

    invoke-static {v0}, Lb/a/a/a;->a(Lb/a/a/a$a;)V

    .line 1032
    new-instance v0, Lb/a/a/b$a;

    invoke-direct {v0}, Lb/a/a/b$a;-><init>()V

    .line 1688
    const-string/jumbo v1, "su"

    .line 2669
    iput-object v1, v0, Lb/a/a/b$a;->c:Ljava/lang/String;

    .line 2897
    new-instance v1, Lb/a/a/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lb/a/a/b$c;-><init>(Lb/a/a/b$a;B)V

    .line 24
    iput-object v1, p0, Lcom/piriform/ccleaner/rooted/n;->b:Lb/a/a/b$c;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/n;->b:Lb/a/a/b$c;

    .line 3043
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "echo \">%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const/16 v2, 0xddd

    iget-object v3, p0, Lcom/piriform/ccleaner/rooted/n;->a:Lcom/piriform/ccleaner/rooted/m;

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/b$c;->a(Ljava/lang/String;ILb/a/a/b$e;)V

    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/n;->b:Lb/a/a/b$c;

    iget-object v1, p0, Lcom/piriform/ccleaner/rooted/n;->a:Lcom/piriform/ccleaner/rooted/m;

    invoke-virtual {v0, p1, p2, v1}, Lb/a/a/b$c;->a(Ljava/lang/String;ILb/a/a/b$e;)V

    .line 40
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/n;->b:Lb/a/a/b$c;

    invoke-virtual {v0}, Lb/a/a/b$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
