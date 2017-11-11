.class public final Lcom/piriform/ccleaner/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/a;


# instance fields
.field private final a:Lcom/piriform/ccleaner/b/h;

.field private final b:Lcom/piriform/ccleaner/b/l;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/b/h;Lcom/piriform/ccleaner/b/l;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    .line 19
    iput-object p2, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    .line 20
    return-void
.end method

.method private static a(Lcom/piriform/ccleaner/b/i;)Z
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/piriform/ccleaner/b/i;->an:Lcom/piriform/ccleaner/b/i;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/piriform/ccleaner/b/m;)Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/piriform/ccleaner/b/m;->aD:Lcom/piriform/ccleaner/b/m;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/b/l;->a(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/b;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->a(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/m;

    move-result-object v0

    .line 45
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->b(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/i;

    move-result-object v1

    .line 47
    invoke-static {v0}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/b/l;->a(Lcom/piriform/ccleaner/b/m;)V

    .line 50
    :cond_0
    invoke-static {v1}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/h;->a(Lcom/piriform/ccleaner/b/i;)V

    .line 53
    :cond_1
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 57
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->a(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/m;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->b(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/i;

    move-result-object v1

    .line 60
    invoke-static {v0}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    invoke-interface {v2, v0, p2, p3, p4}, Lcom/piriform/ccleaner/b/l;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;J)V

    .line 63
    :cond_0
    invoke-static {v1}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v2, v1, v0}, Lcom/piriform/ccleaner/b/h;->a(Lcom/piriform/ccleaner/b/i;Ljava/util/Map;)V

    .line 67
    :cond_1
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/b/b;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->a(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/m;

    move-result-object v2

    .line 72
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->b(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/i;

    move-result-object v0

    .line 74
    invoke-static {v2}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/piriform/ccleaner/b/l;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/String;JLjava/util/Map;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v1, v0, p5}, Lcom/piriform/ccleaner/b/h;->a(Lcom/piriform/ccleaner/b/i;Ljava/util/Map;)V

    .line 85
    :cond_1
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/b;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->a(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/m;

    move-result-object v0

    .line 90
    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->b(Lcom/piriform/ccleaner/b/b;)Lcom/piriform/ccleaner/b/i;

    move-result-object v1

    .line 92
    invoke-static {v0}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    invoke-interface {v2, v0, p2}, Lcom/piriform/ccleaner/b/l;->a(Lcom/piriform/ccleaner/b/m;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    invoke-static {v1}, Lcom/piriform/ccleaner/b/c;->a(Lcom/piriform/ccleaner/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v0, v1, p2}, Lcom/piriform/ccleaner/b/h;->a(Lcom/piriform/ccleaner/b/i;Ljava/lang/Throwable;)V

    .line 99
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/b/h;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->b:Lcom/piriform/ccleaner/b/l;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/b/l;->b(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/b/c;->a:Lcom/piriform/ccleaner/b/h;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/b/h;->b(Ljava/lang/String;)V

    .line 40
    return-void
.end method
