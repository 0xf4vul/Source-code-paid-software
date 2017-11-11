.class public final Lcom/piriform/ccleaner/cleaning/advanced/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/p;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/b;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/b;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    .line 19
    return-void
.end method


# virtual methods
.method public final launchAccessibilitySettings()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/b;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/p;->setAppHasJustLaunchedAccessibilitySettings()V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const v1, 0x54818000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/b;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
