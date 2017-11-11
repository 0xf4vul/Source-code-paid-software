.class public final Lcom/piriform/ccleaner/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/b/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Lc/a/a/a/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/b/a/a;

    invoke-direct {v2}, Lcom/b/a/a;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lc/a/a/a/c;->a(Landroid/content/Context;[Lc/a/a/a/i;)Lc/a/a/a/c;

    .line 21
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/piriform/ccleaner/b/g$a;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/b/g$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/piriform/ccleaner/b/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p1, p2}, Lcom/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p1}, Lcom/b/a/a;->a(Ljava/lang/String;)V

    .line 34
    invoke-static {p2}, Lcom/b/a/a;->a(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p1}, Lcom/b/a/a;->a(Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method
