.class public final Lcom/piriform/ccleaner/ui/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/b/b;


# instance fields
.field private final a:Lcom/piriform/ccleaner/n/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/u;->a:Lcom/piriform/ccleaner/n/a;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/h;Z)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/u;->a:Lcom/piriform/ccleaner/n/a;

    .line 1073
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    .line 1218
    iget-object v1, p1, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 1073
    invoke-virtual {v0, v1, p2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 23
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;)Z
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/u;->a:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/a/h;)Z

    move-result v0

    return v0
.end method
