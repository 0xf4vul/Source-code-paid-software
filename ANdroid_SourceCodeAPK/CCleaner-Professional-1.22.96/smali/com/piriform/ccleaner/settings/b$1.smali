.class public final Lcom/piriform/ccleaner/settings/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/settings/c;

.field final synthetic b:Lcom/piriform/ccleaner/settings/b;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/settings/b;Lcom/piriform/ccleaner/settings/c;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/b$1;->b:Lcom/piriform/ccleaner/settings/b;

    iput-object p2, p0, Lcom/piriform/ccleaner/settings/b$1;->a:Lcom/piriform/ccleaner/settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/b$1;->b:Lcom/piriform/ccleaner/settings/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/b$1;->a:Lcom/piriform/ccleaner/settings/c;

    .line 1068
    invoke-static {v1}, Lcom/piriform/ccleaner/settings/b;->a(Lcom/piriform/ccleaner/settings/c;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1069
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 89
    return-void
.end method
