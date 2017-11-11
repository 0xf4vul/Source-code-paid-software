.class public final Lcom/piriform/ccleaner/settings/analysis/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/settings/analysis/c;


# instance fields
.field private final a:Lcom/piriform/ccleaner/n/a;

.field private final b:Lcom/piriform/ccleaner/cleaning/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/cleaning/g;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/e;->a:Lcom/piriform/ccleaner/n/a;

    .line 13
    iput-object p2, p0, Lcom/piriform/ccleaner/settings/analysis/e;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;Z)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/e;->a:Lcom/piriform/ccleaner/n/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/e;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 1086
    invoke-static {v1, p1}, Lcom/piriform/ccleaner/n/a;->b(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    invoke-virtual {v0, v1, p2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;)Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/e;->a:Lcom/piriform/ccleaner/n/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/e;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-virtual {v0, v1, p1}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
