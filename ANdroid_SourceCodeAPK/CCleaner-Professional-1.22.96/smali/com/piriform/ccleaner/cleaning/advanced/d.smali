.class public final Lcom/piriform/ccleaner/cleaning/advanced/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CCLEANER_SERVICE_SETTINGS_STRING:Ljava/lang/String; = "com.piriform.ccleaner.cleaning.advanced.AdvancedCacheCleaningService"


# instance fields
.field private final androidSystem:Lcom/piriform/ccleaner/s/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/s/d;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/d;->androidSystem:Lcom/piriform/ccleaner/s/d;

    .line 12
    return-void
.end method


# virtual methods
.method public final isAdvancedCleaningServiceEnabled()Z
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/d;->androidSystem:Lcom/piriform/ccleaner/s/d;

    const-string/jumbo v1, "com.piriform.ccleaner.cleaning.advanced.AdvancedCacheCleaningService"

    .line 1021
    iget-object v0, v0, Lcom/piriform/ccleaner/s/d;->a:Landroid/content/ContentResolver;

    const-string/jumbo v2, "enabled_accessibility_services"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_0
.end method
