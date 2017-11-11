.class public final Lcom/piriform/ccleaner/p/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        "U::",
        "Lcom/piriform/ccleaner/r/a",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/content/ServiceConnection;

.field private final c:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/b;->c:Landroid/content/Intent;

    .line 48
    iput-object p2, p0, Lcom/piriform/ccleaner/p/a/b;->a:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Service;",
            "U::",
            "Lcom/piriform/ccleaner/r/a",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1040
    new-instance v1, Lcom/piriform/ccleaner/p/a/b;

    invoke-direct {v1, v0, p1}, Lcom/piriform/ccleaner/p/a/b;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 1041
    sget v0, Lf/a$a;->e:I

    invoke-static {v1, v0}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v0

    .line 1075
    new-instance v2, Lcom/piriform/ccleaner/p/a/b$2;

    invoke-direct {v2, v1}, Lcom/piriform/ccleaner/p/a/b$2;-><init>(Lcom/piriform/ccleaner/p/a/b;)V

    .line 1042
    invoke-virtual {v0, v2}, Lf/d;->a(Lf/c/a;)Lf/d;

    move-result-object v0

    .line 1043
    invoke-static {}, Lf/d;->b()Lf/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d;)Lf/d;

    move-result-object v0

    .line 33
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 23
    check-cast p1, Lf/a;

    .line 2053
    new-instance v0, Lcom/piriform/ccleaner/p/a/b$1;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/p/a/b$1;-><init>(Lcom/piriform/ccleaner/p/a/b;Lf/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/p/a/b;->b:Landroid/content/ServiceConnection;

    .line 2065
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/b;->b:Landroid/content/ServiceConnection;

    .line 2069
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/piriform/ccleaner/p/a/b;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2070
    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/piriform/ccleaner/p/a/b;->c:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 23
    return-void
.end method
