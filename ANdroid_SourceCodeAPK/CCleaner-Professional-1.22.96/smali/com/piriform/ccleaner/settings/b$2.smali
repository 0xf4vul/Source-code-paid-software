.class public final Lcom/piriform/ccleaner/settings/b$2;
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
    .line 94
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/b$2;->b:Lcom/piriform/ccleaner/settings/b;

    iput-object p2, p0, Lcom/piriform/ccleaner/settings/b$2;->a:Lcom/piriform/ccleaner/settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/b$2;->b:Lcom/piriform/ccleaner/settings/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/b$2;->a:Lcom/piriform/ccleaner/settings/c;

    .line 1073
    invoke-static {v1}, Lcom/piriform/ccleaner/settings/b;->a(Lcom/piriform/ccleaner/settings/c;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1074
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    sget-object v3, Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    iget-wide v6, v1, Lcom/piriform/ccleaner/settings/c;->a:J

    .line 1074
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method
