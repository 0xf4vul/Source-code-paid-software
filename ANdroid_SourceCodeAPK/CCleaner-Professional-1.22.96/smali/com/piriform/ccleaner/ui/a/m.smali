.class public final Lcom/piriform/ccleaner/ui/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/a/f;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/m;->a:Landroid/net/Uri;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/a/c;Lcom/piriform/ccleaner/ui/a/j;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/m;->a:Landroid/net/Uri;

    .line 1033
    invoke-virtual {p2, v0}, Lcom/piriform/ccleaner/ui/a/j;->a(Landroid/net/Uri;)V

    .line 23
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/a/c;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
