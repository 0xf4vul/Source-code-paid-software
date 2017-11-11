.class public final Lcom/piriform/ccleaner/cleaning/advanced/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESSIBILITY_SETTINGS_LAUNCHED_BY_APP_KEY:Ljava/lang/String; = "appLaunchedAccessibilitySettings"


# instance fields
.field private final preferencesEditor:Lcom/piriform/ccleaner/n/c;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/c;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/p;->preferencesEditor:Lcom/piriform/ccleaner/n/c;

    .line 13
    return-void
.end method


# virtual methods
.method public final appHasJustLaunchedAccessibilitySettings()Z
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/p;->preferencesEditor:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "appLaunchedAccessibilitySettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final setAppDidNotLaunchAccessibilitySettings()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/p;->preferencesEditor:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "appLaunchedAccessibilitySettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 25
    return-void
.end method

.method public final setAppHasJustLaunchedAccessibilitySettings()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/p;->preferencesEditor:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "appLaunchedAccessibilitySettings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 21
    return-void
.end method
